# Cursul 9: Proceduri — folosește, găsește, fă-ți una a ta

Ai folosit deja patru **proceduri** azi și ieri, poate fără să le numim mereu așa: `sinteza-literatura`,
`profilare-date`, `executie-bugetara`, `raport-activitate`. În aplicație li se spune *skill-uri*. O
procedură e o fișă de protocol, scrisă o singură dată, pe care o urmez la fel de fiecare dată când mi-o
ceri.

Cursul ăsta e împărțit în trei: **ce e pe dinăuntru**, **de unde iei una gata făcută**, și **cum îți
faci una a ta** — aceea cu care pleci acasă.

TRAINER: Madalina recapitulează pe scurt **ce e un skill** și diferența față de `CLAUDE.md`: unul se
încarcă **mereu**, la fiecare conversație (regulile casei), celălalt se pornește **la nevoie**, pentru
un anumit tip de muncă. Ideea de transmis: nu pleci de la o pagină goală — multe proceduri sunt deja
scrise de alții, iar cele proprii se scriu pornind de la una existentă. Predă-i ștafeta aici.

WAIT: Gata, după recapitularea Madalinei?

USER: Da

---

## Partea A — deschide una și uită-te înăuntru

ACTION: Deschide **două** proceduri, ca să vadă diferența:
1. `.claude/skills/sinteza-literatura/SKILL.md` — **doar text**: un frontmatter cu `name` și
   `description` (care îmi spune *când* s-o pornesc), apoi metoda pas cu pas, output-ul cerut și
   regulile de siguranță.
2. `.claude/skills/executie-bugetara/` — **text plus cod**: același `SKILL.md`, dar cu un
   `scripts/executie_buget.sh` alături, care chiar rulează calculele. Ăsta e cel care a scos 436.000
   de lei acum câteva minute.

Spune-i clar: nu e magie și nu e programare. E un **fișier de instrucțiuni în text simplu**, pe care
îl poți citi, copia și schimba.

WAIT: Vezi că e doar un fișier de text? Ai deschis vreodată ceva ce credeai că e „o funcție a
programului" și era, de fapt, un document?

USER: [Confirmă]

---

## Partea B — găsește una gata făcută și instaleaz-o

Hai să luăm una reală, din afară. Îți dau două colecții publice de proceduri pentru cercetare:

- **Google DeepMind — `science-skills`:** `https://github.com/google-deepmind/science-skills`
- **k-dense-ai — `scientific-agent-skills`:** `https://github.com/k-dense-ai/scientific-agent-skills`

TRAINER: Madalina face **instalarea live cu grupa**: deschide una dintre colecții, alege împreună cu
ei o procedură utilă, o descarcă și o pune în `.claude/skills/`. Momentul de arătat pe ecran e că, în
tab-ul Code, **e de ajuns să pui folderul acolo** — scrii `/` și a apărut, fără arhivă, fără repornire.
Predă-i ștafeta aici.

WAIT: Ai văzut procedura nouă în lista de la `/`?

USER: [Confirmă]

> ⚠️ **Capcana pe care s-o eviți:** în setările contului există **Customize → Skills**, unde se încarcă
> skill-uri cu arhivă. Acelea sunt pentru Cowork și pentru sesiunile din cloud, **nu** pentru tab-ul
> Code. Dacă îți urci procedura acolo, o vei căuta degeaba la `/`. Locul corect e folderul
> `.claude/skills/`.

ACTION: Deschide `SKILL.md`-ul procedurii proaspăt instalate și citește-l împreună cu participantul.
Spune regula: **instalat ≠ verificat.** Înainte să te bazezi pe o procedură luată din internet, îi
citești instrucțiunile și te uiți ce face codul ei. Unele cer chei de API sau instalări; dacă e cazul,
spune-o acum, nu în mijlocul unei sarcini.

---

## Partea C — fă-ți una a ta

Acum partea cea mai utilă pe termen lung. Ai o muncă pe care o repeți: la fiecare achiziție de
proiect scrii un **referat de necesitate**. Mereu același format, mereu aceleași capcane — justificarea
care nu se leagă de un obiectiv, suma care nu e în linia de buget.

ACTION: Deschide `templates/referat-de-necesitate.md` și `.claude/skills/referat-necesitate/SKILL.md`.
Apoi rulează procedura pe cazul real din folder: **kitul ELISA** (apare în minută și în ciornă,
45.000 lei, intrat pe linia Echipamente în februarie). Scrie
`outputs/referat-necesitate-kit-elisa-[data].md`, cu justificarea legată de obiectivul de proiect din
minută, valoarea confruntată cu linia bugetară calculată la Cursul 8, și secțiunea „De completat
înainte de semnare".

WAIT: Uită-te peste referat. Ce a refuzat să completeze singur?

USER: [Vede: numărul de înregistrare, codurile, aprobările — lăsate „de completat"]

---

Acum o modificăm, ca să devină a ta. Gândește-te ce ai vrea să facă **altfel** pentru referatele tale
reale.

WAIT: Ce ai schimba la procedură? *(idei: să adauge mereu o secțiune „Alternative analizate"; să
verifice automat dacă suma încape în linia de buget și să spună cât a rămas; să scrie și varianta în
engleză pentru proiectele Horizon; să marcheze cu ⚠ orice achiziție peste un prag.)* Spune-mi o
schimbare.

USER: [Cere o modificare]

ACTION: Modifică `.claude/skills/referat-necesitate/SKILL.md` după cererea participantului — adaugă
sau schimbă pasul potrivit în **Metodă** și, dacă e cazul, în **Output**. Ține-l scurt și clar. Apoi
**rulează procedura din nou** și arată că referatul reflectă schimbarea. Subliniază că **n-a fost
nevoie de nicio repornire** — ai schimbat un fișier de text și comportamentul s-a schimbat.

WAIT: Vezi? Ai schimbat o instrucțiune din fișier și m-am purtat altfel — fără să-mi explici nimic din
nou. Exact așa îți scrii o procedură: pornești de la una aproape de ce vrei și o modelezi.

USER: [Confirmă / mai cere o ajustare]

---

TRAINER: Madalina închide cu mentalitatea, care e ideea de dus acasă: **agentul învață odată cu tine.**
Când vezi un comportament pe care nu-l vrei, decizi *unde* îl schimbi — în `CLAUDE.md` (se aplică la
tot) sau într-o procedură (se aplică doar la un tip de muncă). Și încă ceva foarte practic: Claude e
foarte bun la scris proceduri. Fă ceva o dată, manual, apoi cere-i „transformă ce tocmai am făcut
într-o procedură pe care s-o pot rula data viitoare". Predă-i ștafeta aici.

WAIT: Gata, după ce a explicat Madalina?

USER: Da

---

## Partea D — du-o acasă

O procedură care trăiește doar în folderul cursului nu-ți folosește la nimic luni dimineață.

ACTION: Arată-i cum își duce procedura acasă, ca să fie disponibilă în **orice** folder deschide:
- pe **Mac**: se copiază folderul procedurii din `.claude/skills/` în `~/.claude/skills/`
- pe **Windows**: în `%USERPROFILE%\.claude\skills\`
Oferă-te s-o faci tu: „vrei să-ți copiez `referat-necesitate` în folderul tău personal de proceduri?"
Dacă acceptă, fă-o și confirmă unde a ajuns.

WAIT: Ai procedura ta în folderul personal?

USER: [Confirmă]

---

**Ce ai învățat:** Ce e o procedură pe dinăuntru (nume + descriere → metodă → output → siguranță), că
unele au și cod, de unde iei una gata făcută, unde **nu** se pun (Customize → Skills), cum îți scrii
una modificând una existentă, și cum o duci acasă.

**Ce ai produs:** o procedură instalată din afară, `outputs/referat-necesitate-kit-elisa-[data].md`,
și o **procedură modificată de tine**, copiată în folderul tău personal. Asta e promisiunea „cel puțin
o procedură proprie", bifată.

**Decizia umană:** Ce procedură ai încredere să folosești, ce pui în a ta, și ce rămâne de completat
și semnat de om.

**Urmează:** Ne întoarcem la cercetare, cu conceptul cel mai util din tot atelierul — **subagenții**.
Un panel independent care îți recenzează lucrarea înainte s-o trimiți.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 10"**.
