# Cursul 2: Primul proiect & prima sarcină

Acum facem muncă adevărată. Și începem cu întrebarea pe care o are toată lumea din grupă, dar pe care
puțini au apucat s-o lămurească serios: **ce am voie, de fapt, să fac cu AI în cercetare?**

În `scenarii/politici-ai-cercetare/` am cinci **politici reale**: COPE, ICMJE, Nature/Springer, JAMA
și cadrul european plus nivelul național. Sunt surse autentice, verificate la zi, iar în
`documente-originale/` ai și **documentele oficiale în PDF**, așa cum le publică instituțiile. Exact genul
de documente pe care un cercetător trebuie să le știe, dar care sunt împrăștiate, lungi și scrise în
limbaj de comitet. E o sarcină perfectă de delegat.

WAIT: Înainte să citesc eu — tu ce reguli crezi că au în comun toate jurnalele despre AI? Ghicește una.
*(poți spune „pas")*

USER: [Ghicește — ex. „trebuie declarat", „AI nu poate fi autor"]

---

Hai să vedem dacă ai dreptate. Îți arăt întâi ce e în folder, apoi îți cer o sinteză — și aici e
prima idee importantă a atelierului: **nu-ți cer „rezumă-mi astea".** Îți cer un **rezultat concret,
verificabil, salvat într-un fișier.**

ACTION: Arată fișierele din `scenarii/politici-ai-cercetare/` (cele 5 politici + README + subfolderul
`documente-originale/`). Spune că sunt surse reale, cu linkul oficial la finalul fiecărui fișier, și că
documentele emise stau în PDF alături, cu data la care au fost verificate.

ACTION: Citește cele 5 rezumate `.md` (nu PDF-urile din `documente-originale/`, sunt de citit de om) și
scrie în `outputs/sinteza-politici-ai-[data].md`:
(1) un **tabel** cu coloanele *Sursă · AI poate fi autor? · Trebuie declarat? · Unde se declară? ·
Cine e responsabil?*; (2) dedesubt, **3–4 puncte de consens** între toate sursele; (3) o secțiune
**„Unde diferă"**, cu ce cere una și nu cer celelalte. **Citează fiecare rând** cu fișierul-sursă din
care provine, ca fiecare celulă din tabel să poată fi urmărită înapoi la documentul ei.

Gata. Deschide rezultatul în `outputs/`.

WAIT: Uită-te pe tabel. Se potrivește consensul cu ce ai ghicit?

USER: [Citește — vede: AI nu poate fi autor (toți), transparență/declarare, responsabilitate umană,
citările inventate ca risc recunoscut. Și dezacorduri reale: unde se declară diferă de la o sursă la alta,
iar vechea excepție „corectura de limbă nu se declară" nu mai e comună — Nature a scos-o din politică, JAMA
o păstrează doar pentru verificarea de bază a gramaticii și ortografiei]

---

Trei lucruri de remarcat, fiindcă sunt toată ideea atelierului:

1. **Ți-am dat un rezultat, nu o conversație.** Un fișier în folder, cu tabel și surse — ceva ce poți
   folosi, trimite unui doctorand sau pune la dosarul de proiect. Asta face un agent. Ăsta e
   **reflexul 2**: delegi un rezultat delimitat, nu pui o întrebare.
2. **Fiecare rând trimite la sursă.** N-am „topit" cinci documente într-o părere generală — fiecare
   celulă are în spate fișierul din care vine, ca s-o poți verifica tu, nu să mă crezi pe cuvânt.
   Ăsta e **reflexul 3**, și e cel pe care îl vei folosi cel mai des.
3. **Am păstrat dezacordurile.** O sinteză care netezește cinci politici într-o concluzie curată e
   mai periculoasă decât utilă. Unde jurnalele cer lucruri diferite, scrie că cer lucruri diferite.

WAIT: Dacă ar fi să te bazezi pe tabelul ăsta la următoarea submisie, ce un singur rând ai deschide
tu personal la sursă întâi?

USER: [Numește unul — ex. unde anume se declară la jurnalul lui]

ACTION *(dacă numește unul)*: Deschide exact documentul original din `documente-originale/` pentru rândul
acela și arată-i pasajul. E momentul în care se vede că verificarea la sursă nu e o vorbă, ci două clicuri.

---

Exact. Eu am făcut munca de adunat și structurat; tu decizi ce e gata de folosit. Și reține tiparul,
fiindcă îl repetăm la fiecare curs: **input (fișiere) → o sarcină delegată → un rezultat în folder →
tu verifici → tu decizi.**

> Notă practică, fiindcă e prima întrebare a oricui: politica destinatarului tău concret — jurnalul
> unde trimiți, finanțatorul care îți cere raportul, universitatea ta — bate orice sinteză generală.
> Cele cinci de aici sunt cadrul; a ta se citește la sursă. Avem o procedură pentru declarația
> propriu-zisă (`declaratie-ai`), la care revenim când scriem raportul.

---

**Ce ai învățat:** Cum dai unui agent un folder de surse și îi delegi un *rezultat* concret (un fișier
cu tabel și surse), nu doar un răspuns în chat. De ce fiecare rând trebuie să trimită la sursa lui.
Și, ca bonus util imediat, ce cer de fapt politicile despre AI în cercetare.

**Ce ai produs:** `outputs/sinteza-politici-ai-[data].md` — tabel comparativ + consens + dezacorduri,
fiecare rând citat.

**Decizia umană:** Ce rând deschizi la sursă și ce intră în practica ta reală.

**Urmează:** Îi dăm folderului o „minte" — un fișier `CLAUDE.md` care îmi spune cum se lucrează la
tine, o singură dată, ca să nu-mi mai repeți.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 3"**.
