# Cursul 11: Conectarea instrumentelor tale

Până acum am lucrat **înăuntrul** acestui folder. Dar mult din materialul tău nu stă într-un folder —
e în **calendar**, în **inbox**, în **Zotero**, într-un index de literatură. Cursul ăsta e despre cum
ajung acolo. E și cel mai puternic, și cel mai prudent din atelier: a conecta ceva e ușor; *ce* expui
și *ce* are voie să facă un agent e decizia ta.

WAIT: Unde îți ajunge, de fapt, cea mai mare parte din „programul" de proiect — în calendar? în e-mail?
într-un tabel? *(poți spune „pas")*

USER: [Răspunde]

---

TRAINER: Înainte să conecteze cineva ceva, Madalina ia partea de **siguranță** live — pentru cercetare
și medicină, *ăsta* e cursul: (1) **confidențialitatea** — a conecta contul de lucru înseamnă că pot
citi ce e în scopul sarcinii, ceea ce poate include **date de pacienți sau rezultate nepublicate**;
gândește-te bine înainte de a lega un cont care ține așa ceva, iar un cont curat, separat, e adesea
alegerea corectă; (2) **ce autorizezi** — diferența dintre acces *doar-citire* și *citire-și-scriere*,
și confirmările per-acțiune pe care le ții pornite. Predă-i ștafeta aici.

WAIT: Clar partea de siguranță, după ce a trecut Madalina prin ea?

USER: Da

---

## Partea A — primul conector: calendarul

În aplicație, conectorii se adaugă din contul tău (`claude.ai/customize/connectors`) și se pornesc
într-o sesiune din **butonul `+`** de lângă căsuța de scris → **Connectors**.

TRAINER: Madalina conectează **Google Calendar** live și arată **ecranul de permisiuni** — ce anume se
cere, ce se poate refuza, cum se deconectează după. Momentul important de arătat: permisiunile nu sunt
o formalitate, sunt exact locul unde decizi cât expui. Predă-i ștafeta aici.

WAIT: Gata, după ce a arătat Madalina conectarea și permisiunile?

USER: Da

ACTION: Dacă participantul vrea și e un cont ne-sensibil, ajută-l să pornească **Google Calendar** din
`+` → Connectors. Dacă preferă să nu, sau nu se autorizează acum — **spune-o direct** și folosește
varianta fără conector de mai jos. Nu forța și nu insista.

**Întâi, o citire.**

ACTION (cu Calendar conectat): Rulează o citire mică și sigură — „ce am în calendar mâine?" sau
„listează întâlnirile de proiect din săptămâna asta". Arată rezultatul.

ACTION (fără conector): Tratează `outputs/actiuni-si-decizii.md` (de la Cursul 7) ca „ce ar fi adus un
conector de calendar" și explică: cu Calendar conectat, termenele de acolo — 15 iulie, ora 16:00 —
ar putea fi citite și puse direct, fără să le caute nimeni prin fișiere.

**Acum o acțiune — punem ceva *în* calendar.** Și aici e ideea pe care vreau s-o iei: nu eu propun
acțiunea, **tu mi-o ceri.**

WAIT: Cere-mi tu să-ți adaug ceva în calendar. De exemplu: „adaugă-mi mâine la 10:00 un eveniment de
15 minute «Verific execuția bugetară din raport»".

USER: [Îmi cere „adaugă-mi în calendar…"]

ACTION (cu Calendar conectat): La cererea lui, creează evenimentul și confirmă ce a apărut.
ACTION (fără conector): Descrie exact ce s-ar întâmpla și scrie același memento în `outputs/`, ca să
vadă forma „agentul face o acțiune" fără conector live.

WAIT: Observă diferența: una a *citit* lumea ta, cealaltă a *schimbat-o*. Cum ți s-a părut să mă lași
să-ți scriu în calendar?

USER: [Reflectează]

Un eveniment în calendar e capătul *sigur* al acțiunii — reversibil, intern, îl vezi imediat. Ține
minte senzația; partea nesigură (a trimite, a depune, a publica) o tratăm la final.

---

## Partea B — două cuvinte magice: MCP și API

Lista de conectori din meniu e un punct de plecare, nu un plafon. Ca să-ți dai seama dacă **pot**
vorbi cu un anumit serviciu, caută două cuvinte în jurul lui: **MCP** și **API**.

**MCP** — *Model Context Protocol.* Un standard deschis (pornit de Anthropic, acum larg adoptat) prin
care o unealtă sau o sursă de date se leagă direct la un agent. Adaptorul universal. Conectorul de
Calendar pe care tocmai l-ai folosit e exact ideea asta, ambalată cu un login dintr-un click.

**API** — *Application Programming Interface.* O fereastră pe care un program o deschide altor
programe. **Orice serviciu care are un API** poate, în principiu, fi conectat — chiar dacă nu are un
conector gata făcut în meniu. În loc ca un om să dea click pe un site, trimit o cerere precisă la o
adresă web și primesc date curate, structurate. Multe API-uri academice nu cer niciun cont.

## Partea C — MCP live: Consensus

TRAINER: Madalina conectează **Consensus** live, ca exemplu de MCP adevărat. Consensus are un server
MCP oficial (`https://mcp.consensus.app/mcp`), deci nu e o instalare — se caută în **Settings →
Connectors → Browse connectors**, se dă *Connect*, se autorizează din browser și apare în `+` →
Connectors, lângă Google Calendar. Merge și fără cont Consensus, cu limite mai mici; cu login, limite
mai mari. Ce arată: o întrebare de cercetare pusă în cuvinte, iar Consensus caută în corpusul lui de
lucrări peer-reviewed și întoarce lucrări cu surse, direct în conversație — fără să iasă nimeni din
Claude și fără export manual. Predă-i ștafeta aici.

WAIT: Gata, după ce Madalina a conectat Consensus și a rulat o căutare?

USER: Da

Reține contrastul cu ce urmează: Consensus a venit ca **MCP** — un conector pe care îl pornești o dată
și după aia îl chemi în cuvinte. Următorul lucru, PubMed, vine pe **API** — nu are nimic de pornit,
apelez direct adresa. Două drumuri spre același tip de rezultat.

---

## Partea D — apelul live prin API: PubMed

ACTION: Explică pe scurt că **PubMed** (NCBI) are un API public, fără cheie, și că e cea mai rapidă
cale de a afla dacă un „studiu nou" chiar există, cine l-a publicat și când.

WAIT: Ce să caut? Alege orice — o temă pe care lucrezi, numele unui cercetător, o afirmație de
verificat. *(poți spune „pas" și caut „inflammatory biomarkers heart failure")*

USER: [Numește o temă / un autor / o afirmație]

ACTION (live): Apelează API-ul PubMed cu căutarea aleasă. Întâi ID-urile:
```
https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=TERMENI+CAUTATI&retmax=3&retmode=json
```
apoi detaliile:
```
https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esummary.fcgi?db=pubmed&id=ID1,ID2,ID3&retmode=json
```
Prezintă primele rezultate ca listă scurtă — titlu, jurnal, an, PMID și link. Date brute
transformate în ceva folosibil, într-un singur apel, fără cont.

ACTION (fallback fără rețea): Arată **forma** răspunsului (o listă de ID-uri în `esearchresult`, apoi
pentru fiecare `title`, `pubdate`, `fulljournalname`, `uid`) și explic-o. **Nu inventa un titlu sau un
PMID ca să umpli exemplul** — spune că apelul n-a mers și de ce.

Alte indexuri care răspund la fel, fără cont: **Europe PMC**
(`https://www.ebi.ac.uk/europepmc/webservices/rest/search?query=…&format=json`), **Crossref**
(`https://api.crossref.org/works/DOI`, pentru verificarea unui DOI) și **OpenAlex**
(`https://api.openalex.org/works?search=…`), care acoperă și domeniile nebiomedicale. Sunt aceleași pe
care le folosește procedura `verificare-citari` de marți.

WAIT: Pentru tine — ce sursă verifici des cu mâna și ar putea avea un API în spate (un registru, o
statistică publică, un catalog de bibliotecă)?

USER: [Numește una]

---

## Partea E — unde stau instrumentele pe care le folosești deja

Întrebarea pe care o are toată lumea: „dar Zotero? dar NotebookLM? dar SciSpace?". Răspunsul cinstit e
că se împart în trei categorii, și e util să știi în care intră fiecare:

**1. Conectate direct, din aplicație.** Gmail, Google Calendar, Google Drive. Sunt găzduite de
Anthropic și se pornesc din `+` → Connectors. Astea merg azi, cu un login.

**2. Au API sau MCP, deci se pot lega.** **Consensus** e exemplul de adineauri: server MCP oficial,
se pornește din directorul de conectori, ca Google Calendar. Indexurile de literatură de mai sus
(PubMed, Europe PMC, Crossref, OpenAlex) răspund fără cont, prin API. **Zotero** are un API local și
există conectoare MCP scrise de comunitate — dacă ai biblioteca în Zotero, merită cerut, dar e o
instalare, nu un click.

**Semantic Scholar** merită o notă separată, pentru că e jumătate deschis. Fără cheie, **căutarea**
după cuvinte răspunde `429 Too Many Requests` (reîncercată chiar înainte de atelier), dar
**consultarea unei lucrări pe care o cunoști deja**, după DOI sau PMID, merge, cu tot cu lista ei de
referințe, cine o citează și lucrări recomandate. Deci îl folosești ca să verifici și să extinzi de
la o citare, nu ca să cauți de la zero. Cheia gratuită se cere de pe site-ul lor, pe nume și email.
**Până atunci, înlocuitorul e OpenAlex** (`https://api.openalex.org/works?search=…`), care răspunde
fără cheie și fără cont, acoperă aproape aceleași lucrări și merge și în afara biomedicalului; Europe
PMC face aceeași treabă pe zona biomedicală. Dacă vezi un `429` de la Semantic Scholar în timpul
atelierului, ăsta e drumul, nu o eroare de rezolvat.

**3. Nu se leagă, dar rămân utile.** **NotebookLM**, **SciSpace**, **Elicit** sunt excelente la ce
fac — căutare, descoperire, citit rapid. Nu ai un conector spre ele. Puntea e simplă
și e chiar lucrul pe care l-am făcut toată seara: **exporți din ele și pui fișierul în folder**
(`inbox/`), iar de acolo lucrez normal. Nu renunți la ele; le folosești pentru descoperire, iar aici
transformi ce ai găsit într-un rezultat cu surse, verificabil și reproductibil.

WAIT: Din instrumentele tale, care ar intra în categoria 3 — cel de la care ai exporta un fișier?
*(poți spune „pas")*

USER: [Numește unul]

---

TRAINER: Madalina arată **Composio** ([composio.dev](https://composio.dev)) — un registru cu sute de
integrări (Gmail, Slack, Notion, Google Sheets, GitHub și altele) expuse agenților ca instrumente sau
servere MCP. Versiunea „magazin de aplicații" a celor două cuvinte magice. Trece prin câteva exemple
relevante pentru muncă academică. Predă-i ștafeta aici.

WAIT: Gata, după ce Madalina a arătat Composio?

USER: Da

---

Acum partea sinceră, mai importantă decât orice demo.

**Acoperirea e neuniformă.** Unii conectori sunt solizi; alții sunt lenți sau se schimbă lună de lună.
API-urile pică sau își schimbă forma. Nu construi o rutină critică pe ceva ce n-ai testat de două ori.

**Și prudența pentru cercetare:**
- **Confidențialitate.** A conecta contul de lucru înseamnă că pot citi ce e în scopul sarcinii, ceea
  ce poate include date de pacienți sau rezultate nepublicate. Un cont separat, curat, e adesea
  alegerea bună.
- **Citește și schițează liber; acționează cu grijă.** Un eveniment în calendar e o acțiune sigură.
  *A trimite un e-mail, a depune un raport, a publica* nu sunt. Folosește conectorii ca să aduni și să
  schițezi; orice acțiune exterioară, ireversibilă, rămâne un pas făcut de om.
- **Acces minim.** Conectează lucrul cel mai îngust care rezolvă sarcina. Accesul e ieftin; expunerea
  e costul.

WAIT: Pentru munca ta — e un cont pe care l-ai conecta, și unul pe care absolut nu? De ce?

USER: [Reflectează]

Instinctul ăsta e cursul. Capabilitatea e ușoară; judecata despre *ce expui* și *ce am voie să fac* e
meseria.

---

**Ce ai învățat:** Conectorii îmi dau acces la material din afara folderului și pot *acționa* în el.
Dincolo de listă, **MCP** și **API** îți spun ce se poate lega; ai văzut ambele drumuri live — un MCP
pornit dintr-un click (**Consensus**) și un index de literatură atins direct prin API, fără cont
(**PubMed**) — și știi acum în care din cele trei categorii intră fiecare instrument al tău.

**Ce ai produs:** un conector pornit (sau un motiv clar să nu-l pornești), un eveniment de calendar pe
care m-ai lăsat să-l creez, și două căutări live în literatură, una prin MCP și una prin API.

**Decizia umană:** Ce ești dispus să expui și ce am voie să *fac*.

**Urmează:** Ultimul curs — o sarcină care rulează singură, planul tău personal, și busola cu care
pleci acasă.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 12"**.
