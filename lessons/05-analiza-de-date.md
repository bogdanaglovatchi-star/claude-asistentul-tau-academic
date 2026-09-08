# Cursul 5: Analiză de date & vizualizare

Până acum am lucrat cu text. Acum cu **date** — și aici Claude Code are un avantaj pe care un chat
simplu nu-l are: poate **rula cod** pe numerele tale, le citește, le profilează, scoate un grafic, și
vezi tot pas cu pas. Diferența practică e enormă: un chat îți *estimează* o medie din ce a citit
undeva; eu o **calculez** din fișierul tău, și poți reface calculul oricând.

Lucrăm pe `scenarii/date/boli-cardiace.csv` — **303 pacienți**, setul public UCI Heart Disease (baza
Cleveland), anonim, cu coloanele traduse în română. E un set didactic, vechi, dar real.

Întâi îți arăt un truc mărunt pe care îl vei folosi tot timpul: în aplicație poți **„chema" un
fișier** direct în conversație. Scrie `@` și începe să tastezi numele lui — apare o listă, alegi
fișierul, și mi-l pui exact sub nas, fără să-mi explici unde e.

WAIT: Încearcă acum. Scrie `@` și apoi `boli-cardiace`, alege fișierul din listă, și **cere-mi
explicit** ceva pe el — de exemplu: „@boli-cardiace.csv uită-te la datele astea și spune-mi ce e în ele".

USER: [Scrie `@boli-cardiace…` și îmi cere o analiză pe el]

---

Bun — ai văzut cum `@` îmi pune fișierul exact sub nas. Dar nu sărim direct la grafic. Întâi
**înțelegem** datele: câte rânduri, ce coloane, ce lipsește, ce e ciudat. Abia apoi scoatem o cifră
sau un grafic în care poți avea încredere. Asta face procedura `profilare-date`.

ACTION: Arată pe scurt `.claude/skills/profilare-date/SKILL.md` (profilează → verifică calitatea →
formulează întrebarea → grafic onest → ce arată / ce NU arată). Atrage-i atenția că procedura asta are
și o parte de **cod care chiar rulează**: `scripts/profil_tabel.sh`. E scris în `bash` și `awk`, nu în
Python, tocmai ca să meargă la fel pe Mac și pe Windows, fără nicio instalare în plus.

ACTION: Rulează procedura `profilare-date` pe `scenarii/date/boli-cardiace.csv`. Concret, rulează
codul ei:
```
bash .claude/skills/profilare-date/scripts/profil_tabel.sh \
     scenarii/date/boli-cardiace.csv outputs/profil-boli-cardiace-[data].html \
     --grup boala_cardiaca --valoare puls_maxim
```
Arată ieșirea reală, nu o rescrie din memorie. Apoi scrie profilul în
`outputs/profil-date-boli-cardiace-[data].md`. Dacă scriptul nu rulează pe calculatorul
participantului, **spune-o deschis**, arată eroarea, și fă calculul citind fișierul — dar nu
pretinde că ai rulat ceva ce n-ai rulat.

WAIT: Vezi profilul? Câte rânduri, ce coloane, lipsesc valori?

USER: [Vede: 303 pacienți, 9 coloane, fără valori lipsă, fără duplicate]

---

## Partea A — o întrebare pe care datele chiar o pot susține

Acum întrebarea. Setul are un diagnostic (`boala_cardiaca`, da/nu) și mai multe măsurători. Cea mai
intuitivă comparație: **diferă pulsul maxim la efort între cei cu și cei fără boală?**

ACTION: Arată comparația pe grupuri produsă de script — mediile, medianele, n-urile pentru
`puls_maxim` după `boala_cardiaca`. Cifrele reale sunt: **fără boală, n=164, medie 158,38, mediană
161**; **cu boală, n=139, medie 139,26, mediană 142**. Spune-le exact așa cum le-a scos codul, cu
zecimalele lui, și precizează că oricine din grupă poate reface calculul rulând același script.

WAIT: Aproape 19 bătăi pe minut diferență între grupuri. Ce ai zice dacă ai vedea asta într-un
abstract? *(poți spune „pas")*

USER: [Reacționează]

---

## Partea B — graficul, și ce NU spune el

ACTION: Deschide graficul HTML generat în `outputs/` — se deschide direct în aplicație, în panoul
Browser. Arată-i barele pe grupuri, tabelul filtrabil și sortabil de dedesubt. Spune-i că e un fișier
de sine stătător: nu cere internet, îl poate trimite unui coleg ca atașament și se deschide la fel.

Și acum partea pe care o sare toată lumea, dar care e chiar meseria:

ACTION: Scrie în profil secțiunea **„Ce NU putem concluziona"** și spune-o cu voce tare: diferența e
**descriptivă**, nu un test statistic. Nu e ajustată pentru vârstă, sex sau alți confuzori. Nu spune
nimic despre cauzalitate — un puls maxim mai mic poate fi consecința bolii, sau efectul unui
tratament, sau al faptului că pacienții bolnavi opresc testul de efort mai devreme. Și setul e din
anii '80, deci **nu se trag concluzii clinice din el**.

WAIT: Ce te-ar face să nu pui graficul ăsta într-o prezentare așa cum e? *(poți spune „pas")*

USER: [Numește ceva — lipsa ajustării, vechimea setului, lipsa testului statistic]

---

Două lucruri de reținut:

1. **Cifrele sunt calculate, nu ghicite.** Le-am scos rulând cod pe fișierul tău; poți reface oricând
   calculul, și ăsta e înțelesul practic al cuvântului *reproductibil*. Ăsta e **reflexul 4**.
2. **Graficul spune un adevăr, cu limitele lui lângă el.** Un grafic onest îți arată și ce nu poate
   susține. Un grafic care ascunde limitele e o problemă de integritate, nu de design.

## Partea C — trainerul: aceeași muncă, direct în Excel și în Sheets

Mulți colegi nu trăiesc în foldere, ci în **Excel** și **Google Sheets** — mai ales pe partea de
proiect. Vestea bună: aceeași idee funcționează și acolo.

TRAINER: Madalina demonstrează **Claude în Excel** (aceleași date, dar deschise în Excel — îi ceri o
sinteză sau o formulă și o vezi aplicată în foaie) și apoi **Gemini în Google Sheets**. Ideea de
transmis: alegi unealta unde îți stau deja datele; Claude Code strălucește când vrei **cod rulat,
fișiere și pași verificabili**, iar Excel/Sheets când vrei să rămâi în foaia ta. Predă-i ștafeta aici.

WAIT: Gata, după ce Madalina a arătat Claude în Excel și Gemini în Sheets?

USER: Da

---

> **Pentru partea administrativă:** exact aceeași idee, alt fișier. La Cursul 8 rulăm o procedură
> înrudită (`executie-bugetara`) pe bugetul proiectului CARDIO-BIO și scoatem execuția pe categorii —
> cifra pe care o cere finanțatorul. Codul e același fel de cod; disciplina e aceeași disciplină.

---

**Ce ai învățat:** Mențiunea `@` pentru a ținti un fișier. Că Claude Code **rulează cod** pe datele
tale — profilează, compară, desenează — cu cifre verificabile și reproductibile, nu inventate. Și că
partea „ce NU arată" e obligatorie, nu opțională.

**Ce ai produs:** `outputs/profil-date-boli-cardiace-[data].md` și un grafic HTML interactiv în
`outputs/`.

**Decizia umană:** Ce întrebare merită urmărită și ce concluzie e justificată științific. Cifra e a
codului; interpretarea e a ta.

**Urmează:** Luăm sinteza de la Cursul 4 și o transformăm în text citabil — un stadiu al cunoașterii
cu fiecare afirmație ancorată. Și testăm ce se întâmplă când îți cer o citare pe care nu o am.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 6"**.
