# Începe aici

Acesta este un **atelier care se predă singur**, în **Claude Code** — tab-ul **Code** din aplicația
Claude, unde Claude lucrează direct într-un folder de pe calculatorul tău. **Nu scrii cod și nu ai
nevoie de terminal.** Vorbești cu el normal, în română. Diferența față de un chat e că el chiar
deschide fișierele tale, le citește, le scrie și rulează calcule pe ele — nu îți dă text de copiat.

E pentru **cercetători, cadre didactice, doctoranzi și personal administrativ de proiect**. Toată
lumea face același traseu: nu există „varianta de cercetare" și „varianta administrativă", pentru că
în universitate acelea sunt, de obicei, același om.

Toată vremea lucrăm în jurul aceluiași proiect de cercetare, **CARDIO-BIO** (un grant UEFISCDI pe
biomarkeri inflamatori în insuficiența cardiacă) — o dată dinspre literatură și date, o dată dinspre
raportare, buget și achiziții.

## Cum îl pornești (1 minut)

1. **Dezarhivează** folderul acesta undeva unde îl găsești ușor, de exemplu pe Desktop.
   - **Pe Windows:** clic dreapta pe arhivă → **Extract All**. (Dacă doar deschizi arhiva și lucrezi
     „înăuntrul" ei, nimic nu se salvează. E cea mai frecventă problemă de la început.)
   - **Pe Mac:** dublu-clic pe arhivă.
   - **Păstrează arhiva.** Dacă strici ceva pe parcurs, o dezarhivezi din nou și o iei de la capăt.
2. Deschide **aplicația Claude** și mergi pe tab-ul **Code** (sus, în mijloc).
3. Lasă mediul pe **Local**, apasă **Select folder** și alege folderul acesta.
4. Dacă te întreabă dacă ai încredere în folder, **spune că da**. E folderul pe care tocmai l-ai
   dezarhivat tu.
5. Scrie în căsuța de scris: **`start`**
6. Claude îți va preda Cursul 1 și veți lucra împreună.

**Dacă nu se întâmplă nimic** (instrucțiunile de folder nu s-au încărcat), scrie:
> `Citește CLAUDE.md și urmează-l.`

**Dacă nu poți selecta folderul, pe Windows:** aproape sigur lipsește **Git**. Era pasul 1 din
emailul de setup. Îl instalezi de la [git-scm.com](https://git-scm.com/download/win), cu toate
opțiunile implicite, apoi repornești aplicația Claude.

## Ce vei vedea pe ecran

Câteva lucruri care apar în aplicație și despre care e bine să știi de la început:

- **Indicatorul de diferențe** (`+12 −1`) apare după ce Claude schimbă fișiere. Apeși pe el și vezi
  exact ce s-a modificat, fișier cu fișier. Nu trebuie să-l crezi pe cuvânt.
- **Clic pe orice nume de fișier** din conversație îl deschide. Graficele și paginile HTML se
  deschid direct în aplicație.
- **Inelul de utilizare**, lângă selectorul de model, arată cât din memoria de lucru s-a consumat.
- **Selectorul de mod**, lângă butonul de trimitere: **Auto**, **Manual**, **Accept edits**, **Plan**.
  În *Manual*, Claude cere voie înainte de fiecare modificare. În *Auto*, lucrează fără să te
  întrerupă. **Nu toți vom avea același mod la început** și e în regulă — vorbim despre asta la
  Cursul 1.
- **`/rewind`** dă înapoi modificările făcute de Claude, dacă ceva a luat-o razna.

## Cum navighezi — un curs pe conversație

- Spune **`start`** sau **`cursul 1`** ca să începi.
- Spune **`cursul 4`** (etc.) ca să sari la un curs anume.
- **Fiecare curs se rulează într-o conversație proaspătă.** La final ți se spune să scrii
  **`/clear`** (sau să deschizi o sesiune nouă din bara laterală, pe același folder) și să zici
  „cursul N". Cursul 1 explică de ce — o conversație proaspătă păstrează contextul curat și costul
  mic. Nu pierzi nimic: **fișierele rămân**, doar conversația se reîmprospătează.

## Programul celor două seri

| Când | Ce facem |
|---|---|
| **Marți 8 sept., 18:00–21:00** | Sesiunea 1 — **cursurile 1–6** (fundamente, literatură, date) |
| **Joi 10 sept., 18:00–21:00** | Sesiunea 2 — **cursurile 7–12** (administrare, proceduri, instrumente, rutine) |
| Joi 17 sept., 18:00–19:30 | Q&A de follow-up, pe munca ta |

## Cursurile

| # | Curs | Ce înveți | Material |
|---|------|-----------|----------|
| 1 | Ce face Claude Code diferit | agent vs. chat; folderul, diferențele, modurile de permisiuni | comun |
| 2 | Primul proiect & prima sarcină | delegi un rezultat pe cinci politici reale despre AI în cercetare | cercetare |
| 3 | **Scrierea CLAUDE.md** | instrucțiuni de folder: ce sunt, cum scrii una pentru munca ta | comun |
| 4 | **Sinteză de literatură** | din cinci lucrări → teme, **contradicții**, limite, întrebări deschise | cercetare |
| 5 | **Analiză de date & grafic** | mențiunea `@`; Claude rulează cod pe un set clinic public și scoate un grafic | cercetare |
| 6 | **Din corpus în text citabil** | stadiul cunoașterii, cu fiecare afirmație ancorată; verificarea citărilor | cercetare |
| — | *pauză între seri* | | |
| 7 | **Folderul de proiect moștenit** | din haos → cuprins, acțiuni, termene, contradicții semnalate | administrativ |
| 8 | **Raportul de activitate** | execuția bugetară calculată din sursă; cifra „din memorie" corectată | administrativ |
| 9 | **Proceduri proprii** | folosești, găsești, instalezi și **îți scrii** o procedură; o duci acasă | mixt |
| 10 | **Review cu subagenți** | un panel independent îți recenzează lucrarea înainte de submisie | cercetare |
| 11 | **Conectarea instrumentelor** | Calendar, MCP & API, Consensus prin MCP, apel live la PubMed, unde stau Zotero/NotebookLM | comun |
| 12 | **Rutine + busola de decizie** | o sarcină care rulează singură; planul tău; ce delegi și ce nu | comun |

## Înainte să începi

- Ai nevoie de **aplicația Claude** instalată, cu un **abonament plătit luat direct de pe
  claude.ai** (Pro, de la 20 USD/lună, e suficient).
- Pe **Windows** ai nevoie și de **Git** instalat, altfel tab-ul Code nu poate deschide foldere.
  Pe Mac e de obicei deja acolo. (Era pasul 1 din emailul de setup.)
- **Nu ai nevoie de Python.** Codul din procedurile acestui atelier e scris ca să meargă direct pe
  macOS și, pe Windows, prin Git Bash, care vine odată cu Git.
- Lucrezi pe **fișierele din acest folder**. Lucrările, politicile și setul clinic sunt reale și
  publice; proiectul CARDIO-BIO și bugetul lui sunt fictive, construite pentru exercițiu.
- **Nu încărca date de pacienți, date nepublicate sau manuscrise ale altcuiva** în acest exercițiu.
  Dacă vrei să lucrezi la Cursul 10 pe propria ta lucrare, pune-o în `inbox/` — e a ta, e în regulă.

Folderul `trainer/` (dacă există, în afara acestui pachet) e pentru trainer, nu pentru participant.
