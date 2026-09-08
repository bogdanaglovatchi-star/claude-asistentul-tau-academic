# Cursul 6: Din corpus în text citabil

Ultimul curs din seara asta, și cel care leagă tot ce am făcut. Ai o sinteză (Cursul 4) și o analiză
(Cursul 5). Dar nimeni nu depune o sinteză. Se depune un **text**: stadiul cunoașterii dintr-o cerere
de finanțare, secțiunea de context dintr-un articol, fundamentarea unei teme de doctorat. Acolo,
fiecare afirmație trebuie să reziste dacă cineva o urmărește până la sursă.

Facem exact asta, și apoi testăm pe viu limita: **ce se întâmplă când îți cer o citare pe care nu o am.**

WAIT: Când scrii stadiul cunoașterii, ce te costă cel mai mult timp — găsirea lucrărilor, sau
verificarea că ai citat corect ce spun ele? *(poți spune „pas")*

USER: [Răspunde]

---

## Partea A — textul, cu ancore

ACTION: Citește sinteza produsă la Cursul 4 din `outputs/` (dacă nu există, rulează întâi
`sinteza-literatura` pe `scenarii/literatura/`). Scrie apoi
`outputs/stadiul-cunoasterii-somn-[data].md`: 500–700 de cuvinte de text continuu, în română
academică, structurat ca stadiul cunoașterii dintr-o cerere de finanțare — ce se știe, unde
literatura nu e de acord, ce gol rămâne, și ce ar adresa un proiect nou. **Fiecare afirmație are
lângă ea, în paranteză, lucrarea din care provine** (autor, an), iar la final o listă de referințe cu
DOI. Ce nu poate fi susținut din textele din folder **nu intră** — se trece într-o secțiune separată,
**„De verificat înainte de depunere"**.

Gata. Deschide textul.

WAIT: Citește primul paragraf. Poți urmări fiecare afirmație până la o lucrare din folder?

USER: [Verifică]

---

Observă ce **nu** am făcut: n-am scris „numeroase studii arată că…". Formularea aia e comodă și
nedemonstrabilă — e exact locul unde, într-un text scris cu AI, se strecoară o afirmație pe care n-o
susține nimeni. Dacă sunt cinci studii, spun cinci și le numesc.

## Partea B — testul: cere-mi o citare pe care nu o am

Acum partea cea mai utilă din seara asta. Vreau să vezi cu ochii tăi ce fac când nu am sursa.

WAIT: **Cere-mi** ceva de genul: „adaugă la stadiul cunoașterii un studiu românesc din 2023 despre
somn și performanță academică la studenți, cu DOI." — Un studiu pe care eu nu îl am în folder.

USER: [Îmi cere o citare pe care nu o am în folder]

ACTION: **Nu inventa nimic.** Spune direct că nu ai în folder nicio lucrare care să susțină asta, că
un titlu și un DOI plauzibile ți-ar ieși ușor și ar fi exact greșeala care distruge un dosar, și că
singurul mod corect e să **cauți într-un index real**. Apoi arată-i unde s-ar trece afirmația în text:
în secțiunea „De verificat", marcată explicit ca negăsită.

---

Ține minte senzația asta. **O citare inventată nu arată ca o citare inventată** — arată ca o citare
bună, cu autori credibili, un jurnal real și un DOI care are forma potrivită. E singurul lucru din
tot atelierul care îți poate strica un dosar sau un articol, și de aceea are procedură dedicată.

## Partea C — verificarea în index

ACTION: Arată pe scurt `.claude/skills/verificare-citari/SKILL.md`: extrage citările → întreabă un
index public → compară câmp cu câmp → verdict din set închis (✅ confirmată / ⚠️ cu erori / ❌ negăsită).
Subliniază că **„negăsită" nu înseamnă „falsă"** — poate fi o carte, un raport, o teză, ceva neindexat.

ACTION: Rulează `verificare-citari` pe lista de referințe din textul tocmai scris. Interoghează
**PubMed** pentru lucrările biomedicale:
```
https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=TERMENI&retmax=5&retmode=json
```
și apoi `esummary.fcgi?db=pubmed&id=…&retmode=json` pentru titlu, autori, an, jurnal. Pentru
verificarea unui DOI, folosește **Crossref**: `https://api.crossref.org/works/DOI`. Ambele răspund
fără cont și fără cheie. Scrie rezultatul în `outputs/verificare-citari-[data].md`.
**Dacă apelul nu merge** (fără rețea, blocat de instituție), spune-o deschis, arată ce ai încercat,
și explică forma răspunsului — **nu completa cu date pe care nu le-ai primit.**

WAIT: Uită-te la tabelul de verificare. Ce verdict a primit fiecare lucrare?

USER: [Vede: cele cinci din corpus confirmate, cu PMC/DOI real; studiul cerut de el — negăsit]

---

Asta e bucla completă, și e tot ce trebuie ca să folosești AI în scris academic fără să-ți fie frică:
**scrii din surse pe care le ai → marchezi ce nu poți susține → verifici identificatorii într-un
index real → decizi tu ce rămâne.**

> Și cealaltă jumătate a disciplinei, de la Cursul 2: dacă textul ăsta ajunge într-o cerere de
> finanțare sau într-un articol, **folosirea AI se declară** unde cere destinatarul. Avem o procedură
> și pentru asta (`declaratie-ai`), care scrie declarația pe politica potrivită. O poți cere oricând.

## Partea D — cum îl scoți din folder

ACTION: Dacă participantul vrea să trimită textul mai departe, generează și o variantă HTML în
`outputs/` și deschide-o în panoul Browser. Spune-i gestul care merge pe orice laptop: din pagina
deschisă, **Print → Save as PDF**. Nu promite conversie în Word — dacă unealta care o face nu e
instalată, nu se poate, și e mai bine s-o spui decât s-o încerci în fața grupei.

---

**Ce ai învățat:** Cum treci de la o sinteză la **text citabil**, cu fiecare afirmație ancorată și cu
ce nu poate fi susținut marcat separat. Ce fac când nu am o sursă (și de ce nu inventez). Și cum se
verifică o bibliografie într-un index public, fără cont.

**Ce ai produs:** `outputs/stadiul-cunoasterii-somn-[data].md` și `outputs/verificare-citari-[data].md`.

**Decizia umană:** Ce afirmație rămâne în text, ce se citește integral înainte de citare, ce se declară.

**Urmează, joi:** Trecem de partea cealaltă a aceluiași proiect — folderul administrativ moștenit,
raportul la finanțator, execuția bugetară, achizițiile. Aceeași disciplină, alte fișiere.

**Ca să continui joi:** deschide același folder, scrie **`/clear`** și apoi **„cursul 7"**. Ne vedem
joi la 18:00. Fișierele rămân aici; nu trebuie să pregătești nimic.
