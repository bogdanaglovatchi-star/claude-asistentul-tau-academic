#!/usr/bin/env bash
# profil_tabel.sh — partea de COD a skill-ului `profilare-date`.
#
# Ruleaza calcule REALE pe un tabel de date CSV (nu estimeaza): rezumat pe coloane,
# valori lipsa, anomalii, si — daca ii dai doua coloane — o comparatie intre grupuri
# (n, medie, mediana, min, max) plus un grafic HTML interactiv, de sine statator.
#
# Foloseste DOAR unelte care exista pe orice laptop din grupa: bash, awk, sort.
# Pe macOS sunt native. Pe Windows vin cu Git, care e oricum obligatoriu pentru
# tab-ul Code din aplicatia Claude. Fara Python, fara Node, fara instalari.
#
# Utilizare:
#   bash profil_tabel.sh <input.csv> <output.html> [--grup COL] [--valoare COL]
#
# Exemplu (setul clinic):
#   bash profil_tabel.sh scenarii/date/boli-cardiace.csv outputs/profil.html \
#        --grup boala_cardiaca --valoare puls_maxim

set -eu

CSV=""; OUT=""; COL_GRUP=""; COL_VAL=""

while [ $# -gt 0 ]; do
  case "$1" in
    --grup)    COL_GRUP="$2"; shift 2 ;;
    --valoare) COL_VAL="$2";  shift 2 ;;
    -h|--help) sed -n '2,18p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *)
      if   [ -z "$CSV" ]; then CSV="$1"
      elif [ -z "$OUT" ]; then OUT="$1"
      else echo "Argument nerecunoscut: $1" >&2; exit 2
      fi
      shift ;;
  esac
done

if [ -z "$CSV" ] || [ -z "$OUT" ]; then
  echo "Utilizare: bash profil_tabel.sh <input.csv> <output.html> [--grup COL] [--valoare COL]" >&2
  exit 2
fi
[ -f "$CSV" ] || { echo "Nu gasesc fisierul: $CSV" >&2; exit 1; }

mkdir -p "$(dirname "$OUT")"
TMP="${TMPDIR:-/tmp}/profil_$$"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

# ---------------------------------------------------------------- pasul 1
# Rezumat pe coloane + anomalii. Merge pe stdout (il citeste Claude) SI in fisier.
awk -v g="$COL_GRUP" -v v="$COL_VAL" -v csv="$CSV" '
  function trim(s) { gsub(/^[ \t"]+|[ \t"\r]+$/, "", s); return s }
  function isnum(s) { s = trim(s); return (s ~ /^-?[0-9]+([.][0-9]+)?$/) }
  BEGIN { FS = "," }
  NR == 1 {
    ncol = NF
    for (i = 1; i <= NF; i++) { head[i] = trim($i); if (head[i] == g) gi = i; if (head[i] == v) vi = i }
    next
  }
  NF == 0 { next }
  {
    rows++
    key = ""
    for (i = 1; i <= ncol; i++) {
      val = trim($i); key = key "\037" val
      if (val == "") { missing[i]++; continue }
      if (!((i "\036" val) in seenval)) { seenval[i "\036" val] = 1; nd[i]++ }
      if (isnum(val)) {
        n = val + 0; numc[i]++; csum[i] += n
        if (!(i in cmin) || n < cmin[i]) cmin[i] = n
        if (!(i in cmax) || n > cmax[i]) cmax[i] = n
      } else txt[i]++
    }
    if (seenrow[key]++) dup++
  }
  END {
    printf "FISIER: %s\n", csv
    printf "RANDURI DE DATE: %d\n", rows
    printf "COLOANE: %d\n\n", ncol
    print "REZUMAT PE COLOANE"
    print "coloana | tip | lipsa | detaliu"
    for (i = 1; i <= ncol; i++) {
      if (numc[i] > txt[i])
        printf "%s | numeric | %d | min %g, max %g, medie %.2f\n", head[i], missing[i]+0, cmin[i], cmax[i], (numc[i] ? csum[i]/numc[i] : 0)
      else
        printf "%s | text | %d | %d valori distincte\n", head[i], missing[i]+0, nd[i]+0
    }
    print "\nCALITATEA DATELOR"
    an = 0
    if (dup > 0) { printf "- %d randuri duplicate identice — de verificat, nu de sters automat\n", dup; an++ }
    for (i = 1; i <= ncol; i++) if (missing[i] > 0) { printf "- coloana %s: %d valori goale\n", head[i], missing[i]; an++ }
    if (an == 0) print "- fara valori lipsa si fara duplicate"
    if (g != "" && !gi) printf "- ATENTIE: coloana de grup \"%s\" nu exista in fisier\n", g
    if (v != "" && !vi) printf "- ATENTIE: coloana de valoare \"%s\" nu exista in fisier\n", v
  }
' "$CSV" | tee "$TMP/rezumat.txt"

# ---------------------------------------------------------------- pasul 2
# Comparatia pe grupuri: n, medie, mediana, min, max. Mediana calculata cu o
# sortare scrisa de mana (asort exista doar in gawk; pe macOS awk-ul e BSD).
if [ -n "$COL_GRUP" ] && [ -n "$COL_VAL" ]; then
  awk -v g="$COL_GRUP" -v v="$COL_VAL" '
    function trim(s) { gsub(/^[ \t"]+|[ \t"\r]+$/, "", s); return s }
    function isnum(s) { s = trim(s); return (s ~ /^-?[0-9]+([.][0-9]+)?$/) }
    BEGIN { FS = "," }
    NR == 1 { for (i = 1; i <= NF; i++) { h = trim($i); if (h == g) gi = i; if (h == v) vi = i } next }
    NF == 0 || !gi || !vi { next }
    {
      grp = trim($gi); val = trim($vi)
      if (grp == "" || !isnum(val)) next
      n[grp]++; s[grp] += val + 0
      store[grp, n[grp]] = val + 0
      if (!(grp in mn) || val + 0 < mn[grp]) mn[grp] = val + 0
      if (!(grp in mx) || val + 0 > mx[grp]) mx[grp] = val + 0
    }
    END {
      if (!gi || !vi) exit 0
      for (grp in n) {
        k = n[grp]
        for (i = 1; i <= k; i++) a[i] = store[grp, i]
        for (i = 2; i <= k; i++) { x = a[i]; j = i - 1; while (j > 0 && a[j] > x) { a[j+1] = a[j]; j-- } a[j+1] = x }
        med = (k % 2) ? a[int(k/2) + 1] : (a[k/2] + a[k/2 + 1]) / 2
        printf "%s|%d|%.2f|%.2f|%g|%g\n", grp, k, s[grp]/k, med, mn[grp], mx[grp]
        delete a
      }
    }
  ' "$CSV" | sort -t'|' -k2,2 -rn > "$TMP/grupuri.txt"

  if [ -s "$TMP/grupuri.txt" ]; then
    echo ""
    echo "COMPARATIE PE GRUPURI — $COL_VAL, dupa $COL_GRUP"
    printf "%-22s %6s %10s %10s %8s %8s\n" "grup" "n" "medie" "mediana" "min" "max"
    awk -F'|' '{printf "%-22s %6d %10.2f %10.2f %8g %8g\n", $1, $2, $3, $4, $5, $6}' "$TMP/grupuri.txt"
    echo ""
    echo "Diferenta dintre grupuri e DESCRIPTIVA. Nu e un test statistic si nu e o concluzie clinica."
  fi
fi

# ---------------------------------------------------------------- pasul 3
# Graficul HTML interactiv, de sine statator (fara CDN, fara internet).
MAXMED=""
[ -f "$TMP/grupuri.txt" ] && MAXMED=$(awk -F'|' 'BEGIN{m=0} {if ($3+0 > m) m = $3+0} END{printf "%.4f", m}' "$TMP/grupuri.txt")

{
cat <<'HTMLHEAD'
<!doctype html>
<html lang="ro">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Profil de date</title>
<style>
  :root{--canvas:#FCF8EC;--sec:#ECDFBD;--ink:#3C2814;--mut:#6B5840;--olive:#B5A373;--orange:#FD483D;--line:#E3D6B8}
  *{box-sizing:border-box}
  body{margin:0;background:var(--canvas);color:var(--ink);
       font:15px/1.55 -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Helvetica,Arial,sans-serif}
  .wrap{max-width:940px;margin:0 auto;padding:34px 20px 70px}
  h1{font-size:26px;margin:0 0 6px}
  .sub{color:var(--mut);margin:0 0 26px;font-size:15px}
  h2{font-size:12px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);
     margin:36px 0 12px;padding-bottom:7px;border-bottom:1px solid var(--line)}
  .note{background:#fff;border:1px solid var(--line);border-left:4px solid var(--orange);
        border-radius:6px;padding:13px 16px;margin:0 0 8px;font-size:15px}
  .bar-row{display:flex;align-items:center;gap:12px;margin:7px 0}
  .bar-lab{width:150px;flex:none;font-weight:600;font-size:14px}
  .bar-track{flex:1;background:var(--sec);border-radius:4px;height:26px;overflow:hidden}
  .bar-fill{height:100%;background:var(--olive);border-radius:4px}
  .bar-row:first-of-type .bar-fill{background:var(--orange)}
  .bar-val{width:170px;flex:none;text-align:right;font-variant-numeric:tabular-nums;font-size:14px}
  input[type=search]{width:100%;padding:10px 13px;border:1px solid var(--line);border-radius:6px;
    font-size:15px;background:#fff;color:var(--ink);margin-bottom:10px}
  .scroll{overflow-x:auto}
  table{width:100%;border-collapse:collapse;background:#fff;border:1px solid var(--line);
        border-radius:6px;overflow:hidden;font-size:14px}
  th{background:var(--sec);text-align:left;padding:9px 11px;cursor:pointer;user-select:none;
     font-size:12px;letter-spacing:.06em;text-transform:uppercase;white-space:nowrap}
  th:hover{background:#E2D2A8}
  th::after{content:" \2195";opacity:.35}
  td{padding:8px 11px;border-top:1px solid var(--line)}
  td.n{text-align:right;font-variant-numeric:tabular-nums}
  tbody tr:hover{background:#FFFDF6}
  pre{background:#fff;border:1px solid var(--line);border-radius:6px;padding:14px;overflow-x:auto;font-size:13px;line-height:1.5}
  .count{color:var(--mut);font-size:13px;margin:8px 0 0}
  footer{margin-top:44px;padding-top:16px;border-top:1px solid var(--line);color:var(--mut);font-size:13px}
</style>
</head>
<body><div class="wrap">
<h1>Profil de date</h1>
HTMLHEAD

printf '<p class="sub">Calculat din <code>%s</code>. Fiecare cifra de aici este calculata din randurile fisierului, nu estimata.</p>\n' "$(basename "$CSV")"

if [ -s "$TMP/grupuri.txt" ]; then
  printf '<h2>%s, pe grupuri de %s (medie)</h2>\n' "$COL_VAL" "$COL_GRUP"
  awk -F'|' -v mx="$MAXMED" '{
    w = (mx > 0) ? 100*$3/mx : 0
    printf "<div class=\"bar-row\"><div class=\"bar-lab\">%s</div><div class=\"bar-track\"><div class=\"bar-fill\" style=\"width:%.1f%%\"></div></div><div class=\"bar-val\">medie %.2f · mediana %.2f · n=%d</div></div>\n", $1, w, $3, $4, $2
  }' "$TMP/grupuri.txt"
  echo '<div class="note"><strong>Ce NU arata graficul.</strong> E o comparatie descriptiva intre grupuri, nu un test statistic si nu o relatie de cauzalitate. Diferenta poate veni din varsta, sex sau alti factori care nu sunt in acest grafic.</div>'
fi

echo '<h2>Rezumatul coloanelor</h2><pre>'
sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g' "$TMP/rezumat.txt"
echo '</pre>'

echo '<h2>Toate randurile</h2>'
echo '<input type="search" id="q" placeholder="Filtreaza: scrie o valoare, un grup, un numar...">'
echo '<div class="scroll"><table id="t"><thead><tr>'
head -1 "$CSV" | awk -F, '{for(i=1;i<=NF;i++){h=$i; gsub(/^[ \t"]+|[ \t"\r]+$/,"",h); printf "<th>%s</th>", h} print ""}'
echo '</tr></thead><tbody>'
awk -F, 'NR>1 && NF>0 {
  printf "<tr>"
  for (i = 1; i <= NF; i++) {
    v = $i; gsub(/^[ \t"]+|[ \t"\r]+$/, "", v)
    gsub(/&/, "\\&amp;", v); gsub(/</, "\\&lt;", v); gsub(/>/, "\\&gt;", v)
    if (v ~ /^-?[0-9]+([.,][0-9]+)?$/) printf "<td class=\"n\">%s</td>", v
    else printf "<td>%s</td>", v
  }
  print "</tr>"
}' "$CSV"
echo '</tbody></table></div>'
echo '<p class="count" id="c"></p>'

cat <<'HTMLFOOT'
<footer>Generat de skill-ul <code>profilare-date</code>, partea lui de cod
(<code>scripts/profil_tabel.sh</code>). Fisier de sine statator: nu cere internet si nu incarca nimic din afara.</footer>
</div>
<script>
(function () {
  var q = document.getElementById('q'), t = document.getElementById('t'), c = document.getElementById('c');
  var body = t.tBodies[0], rows = [].slice.call(body.rows);
  function count() {
    var n = 0;
    for (var i = 0; i < rows.length; i++) if (!rows[i].hidden) n++;
    c.textContent = n + ' din ' + rows.length + ' randuri';
  }
  q.addEventListener('input', function () {
    var s = q.value.toLowerCase();
    for (var i = 0; i < rows.length; i++) {
      rows[i].hidden = s ? rows[i].textContent.toLowerCase().indexOf(s) === -1 : false;
    }
    count();
  });
  var dir = {}, heads = t.tHead.rows[0].cells;
  for (var k = 0; k < heads.length; k++) {
    (function (idx) {
      heads[idx].addEventListener('click', function () {
        dir[idx] = !dir[idx];
        var sign = dir[idx] ? 1 : -1;
        rows.sort(function (a, b) {
          var x = a.cells[idx].textContent.trim(), y = b.cells[idx].textContent.trim();
          var nx = parseFloat(x.replace(',', '.')), ny = parseFloat(y.replace(',', '.'));
          var bothNum = !isNaN(nx) && !isNaN(ny) && /^-?[0-9.,]+$/.test(x) && /^-?[0-9.,]+$/.test(y);
          if (bothNum) return sign * (nx - ny);
          return sign * x.localeCompare(y, 'ro');
        });
        for (var i = 0; i < rows.length; i++) body.appendChild(rows[i]);
      });
    })(k);
  }
  count();
})();
</script>
</body></html>
HTMLFOOT
} > "$OUT"

echo ""
echo "GRAFIC SCRIS: $OUT"
