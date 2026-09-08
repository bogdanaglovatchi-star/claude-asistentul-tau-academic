#!/usr/bin/env bash
# executie_buget.sh — partea de COD a skill-ului `executie-bugetara`.
#
# Ruleaza calcule REALE pe fisierul de buget al proiectului: planificat vs. cheltuit
# pe categorie si pe total, procentul de executie, abaterile, si un grafic HTML
# interactiv, de sine statator. Optional confrunta o cifra scrisa "din memorie" cu
# cifra calculata din fisier.
#
# Foloseste DOAR bash, awk si sort. Native pe macOS; pe Windows vin cu Git, care e
# oricum obligatoriu pentru tab-ul Code. Fara Python, fara instalari.
#
# Utilizare:
#   bash executie_buget.sh <buget.csv> <output.html> \
#       [--planificat COL] [--cheltuit COL] [--categorie COL] [--din-memorie N] [--prag P]
#
# Exemplu:
#   bash executie_buget.sh scenarii/date/buget-proiect.csv outputs/executie.html --din-memorie 461000

set -eu

CSV=""; OUT=""
COL_CAT="categorie"; COL_PLAN="planificat_lei"; COL_CHELT="cheltuit_lei"
DIN_MEMORIE=""; PRAG="110"

while [ $# -gt 0 ]; do
  case "$1" in
    --categorie)   COL_CAT="$2";     shift 2 ;;
    --planificat)  COL_PLAN="$2";    shift 2 ;;
    --cheltuit)    COL_CHELT="$2";   shift 2 ;;
    --din-memorie) DIN_MEMORIE="$2"; shift 2 ;;
    --prag)        PRAG="$2";        shift 2 ;;
    -h|--help)     sed -n '2,18p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *)
      if   [ -z "$CSV" ]; then CSV="$1"
      elif [ -z "$OUT" ]; then OUT="$1"
      else echo "Argument nerecunoscut: $1" >&2; exit 2
      fi
      shift ;;
  esac
done

if [ -z "$CSV" ] || [ -z "$OUT" ]; then
  echo "Utilizare: bash executie_buget.sh <buget.csv> <output.html> [optiuni]" >&2
  exit 2
fi
[ -f "$CSV" ] || { echo "Nu gasesc fisierul: $CSV" >&2; exit 1; }

mkdir -p "$(dirname "$OUT")"
TMP="${TMPDIR:-/tmp}/buget_$$"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

# ---------------------------------------------------------------- pasul 1
# Agregarea pe categorie: "categorie|planificat|cheltuit|procent|abatere"
awk -v cc="$COL_CAT" -v cp="$COL_PLAN" -v ch="$COL_CHELT" '
  function trim(s) { gsub(/^[ \t"]+|[ \t"\r]+$/, "", s); return s }
  function num(s) { s = trim(s); gsub(/[ ]/, "", s); gsub(/,/, ".", s); return s + 0 }
  BEGIN { FS = "," }
  NR == 1 {
    for (i = 1; i <= NF; i++) { h = trim($i); if (h == cc) ci = i; if (h == cp) pi = i; if (h == ch) hi = i }
    if (!ci || !pi || !hi) { print "EROARE: nu gasesc coloanele cerute in antet." > "/dev/stderr"; exit 3 }
    next
  }
  NF == 0 { next }
  {
    c = trim($ci); if (c == "") c = "(fara categorie)"
    plan[c] += num($pi); chelt[c] += num($hi); n[c]++
  }
  END {
    for (c in plan) {
      p = plan[c]; h = chelt[c]
      pct = (p > 0) ? 100 * h / p : 0
      printf "%s|%.2f|%.2f|%.2f|%.2f\n", c, p, h, pct, h - p
    }
  }
' "$CSV" | sort -t'|' -k2,2 -rn > "$TMP/categorii.txt"

TOT_PLAN=$(awk -F'|' '{t += $2} END {printf "%.2f", t}' "$TMP/categorii.txt")
TOT_CHELT=$(awk -F'|' '{t += $3} END {printf "%.2f", t}' "$TMP/categorii.txt")
TOT_PCT=$(awk -v p="$TOT_PLAN" -v c="$TOT_CHELT" 'BEGIN{printf "%.2f", (p > 0 ? 100*c/p : 0)}')

# ---------------------------------------------------------------- pasul 2
echo "FISIER: $CSV"
awk 'END {printf "RANDURI DE DATE: %d\n", NR - 1}' "$CSV"
echo ""
echo "EXECUTIE BUGETARA PE CATEGORII"
printf "%-16s %14s %14s %9s %14s\n" "categorie" "planificat" "cheltuit" "executie" "abatere"
awk -F'|' '{printf "%-16s %14.2f %14.2f %8.1f%% %+14.2f\n", $1, $2, $3, $4, $5}' "$TMP/categorii.txt"
printf "%-16s %14.2f %14.2f %8.1f%% %+14.2f\n" "TOTAL" "$TOT_PLAN" "$TOT_CHELT" "$TOT_PCT" \
  "$(awk -v p="$TOT_PLAN" -v c="$TOT_CHELT" 'BEGIN{printf "%.2f", c - p}')"

echo ""
echo "ABATERI DE JUSTIFICAT (peste ${PRAG}% sau sub 90%)"
ABATERI=$(awk -F'|' -v prag="$PRAG" '
  $4 > prag { printf "- %s: %.1f%% din plan (+%.0f lei peste) — DEPASIRE, se justifica in raport\n", $1, $4, $5 }
  $4 < 90   { printf "- %s: %.1f%% din plan (%.0f lei necheltuiti) — SUBEXECUTIE, se explica in raport\n", $1, $4, -$5 }
' "$TMP/categorii.txt")
if [ -n "$ABATERI" ]; then echo "$ABATERI"; else echo "- nicio categorie in afara pragurilor"; fi

# ---------------------------------------------------------------- pasul 3
VERIF_LINE=""
if [ -n "$DIN_MEMORIE" ]; then
  VERIF_LINE=$(awk -v m="$DIN_MEMORIE" -v r="$TOT_CHELT" -v p="$TOT_PLAN" 'BEGIN{
    d = r - m; pd = (m != 0) ? 100*d/m : 0
    printf "Cifra din ciorna: %.0f lei cheltuiti. Cifra calculata din fisier: %.2f lei. Diferenta %+.2f lei (%+.1f%%). Executia reala este %.1f%%, nu cea din ciorna. Corecta este cifra din fisier.", m, r, d, pd, (p > 0 ? 100*r/p : 0)
  }')
  echo ""
  echo "VERIFICAREA CIFREI SCRISE DIN MEMORIE"
  echo "$VERIF_LINE"
fi

# ---------------------------------------------------------------- pasul 4
MAXVAL=$(awk -F'|' 'BEGIN{m=0} {if ($2+0 > m) m = $2+0; if ($3+0 > m) m = $3+0} END{printf "%.4f", m}' "$TMP/categorii.txt")

{
cat <<'HTMLHEAD'
<!doctype html>
<html lang="ro">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Executie bugetara</title>
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
        border-radius:6px;padding:13px 16px;margin:0 0 14px;font-size:15px}
  .grp{margin:14px 0}
  .grp-lab{font-weight:600;font-size:14px;margin-bottom:4px;display:flex;justify-content:space-between}
  .grp-lab .pct{font-variant-numeric:tabular-nums;color:var(--mut);font-weight:400}
  .bar{display:flex;align-items:center;gap:10px;margin:3px 0}
  .bar .key{width:88px;flex:none;font-size:12px;color:var(--mut);text-transform:uppercase;letter-spacing:.06em}
  .track{flex:1;background:var(--sec);border-radius:4px;height:20px;overflow:hidden}
  .fill{height:100%;border-radius:4px;background:var(--olive)}
  .fill.spent{background:var(--ink)}
  .fill.over{background:var(--orange)}
  .val{width:120px;flex:none;text-align:right;font-variant-numeric:tabular-nums;font-size:13px}
  .scroll{overflow-x:auto}
  table{width:100%;border-collapse:collapse;background:#fff;border:1px solid var(--line);
        border-radius:6px;overflow:hidden;font-size:14px}
  th{background:var(--sec);text-align:left;padding:9px 11px;font-size:12px;letter-spacing:.06em;
     text-transform:uppercase;white-space:nowrap}
  td{padding:8px 11px;border-top:1px solid var(--line)}
  td.n{text-align:right;font-variant-numeric:tabular-nums}
  tr.over td{background:#FFF3F1}
  tfoot td{font-weight:700;background:#FFFDF6}
  footer{margin-top:44px;padding-top:16px;border-top:1px solid var(--line);color:var(--mut);font-size:13px}
</style>
</head>
<body><div class="wrap">
<h1>Executie bugetara — planificat vs. cheltuit</h1>
HTMLHEAD

printf '<p class="sub">Calculat din <code>%s</code>. Fiecare cifra este suma randurilor din fisier, nu o estimare.</p>\n' "$(basename "$CSV")"

if [ -n "$VERIF_LINE" ]; then
  printf '<div class="note"><strong>Verificarea cifrei scrise din memorie.</strong> %s</div>\n' "$VERIF_LINE"
fi

echo '<h2>Pe categorii</h2>'
awk -F'|' -v mx="$MAXVAL" -v prag="$PRAG" '{
  wp = (mx > 0) ? 100*$2/mx : 0
  wc = (mx > 0) ? 100*$3/mx : 0
  cls = ($4 > prag) ? " over" : ""
  printf "<div class=\"grp\"><div class=\"grp-lab\"><span>%s</span><span class=\"pct\">%.1f%% din plan</span></div>", $1, $4
  printf "<div class=\"bar\"><div class=\"key\">planificat</div><div class=\"track\"><div class=\"fill\" style=\"width:%.1f%%\"></div></div><div class=\"val\">%.0f lei</div></div>", wp, $2
  printf "<div class=\"bar\"><div class=\"key\">cheltuit</div><div class=\"track\"><div class=\"fill spent%s\" style=\"width:%.1f%%\"></div></div><div class=\"val\">%.0f lei</div></div></div>\n", cls, wc, $3
}' "$TMP/categorii.txt"

echo '<h2>Tabelul de pus in raport</h2><div class="scroll"><table><thead><tr><th>Categorie</th><th>Planificat (lei)</th><th>Cheltuit (lei)</th><th>Executie</th><th>Abatere (lei)</th></tr></thead><tbody>'
awk -F'|' -v prag="$PRAG" '{
  cls = ($4 > prag || $4 < 90) ? " class=\"over\"" : ""
  printf "<tr%s><td>%s</td><td class=\"n\">%.0f</td><td class=\"n\">%.0f</td><td class=\"n\">%.1f%%</td><td class=\"n\">%+.0f</td></tr>\n", cls, $1, $2, $3, $4, $5
}' "$TMP/categorii.txt"
echo '</tbody><tfoot>'
printf '<tr><td>TOTAL</td><td class="n">%.0f</td><td class="n">%.0f</td><td class="n">%.1f%%</td><td class="n">%+.0f</td></tr>\n' \
  "$TOT_PLAN" "$TOT_CHELT" "$TOT_PCT" "$(awk -v p="$TOT_PLAN" -v c="$TOT_CHELT" 'BEGIN{printf "%.0f", c - p}')"
echo '</tfoot></table></div>'

cat <<'HTMLFOOT'
<footer>Generat de skill-ul <code>executie-bugetara</code>, partea lui de cod
(<code>scripts/executie_buget.sh</code>). Fisier de sine statator: nu cere internet.
Cifrele se pot reface oricand rerulind scriptul pe acelasi fisier — asta e ce inseamna reproductibil.</footer>
</div></body></html>
HTMLFOOT
} > "$OUT"

echo ""
echo "GRAFIC SCRIS: $OUT"
