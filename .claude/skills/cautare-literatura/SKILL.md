---
name: cautare-literatura
description: Caută literatură științifică pe o temă și întoarce un tabel de citări VERIFICATE (titlu, autori, an, jurnal, DOI/PMC, link funcțional), fiecare confirmată într-un index real. Folosește când ți se cere o căutare de literatură, un mini literature review sau o listă de surse pe o temă.
---

# Căutare de literatură (cautare-literatura)

Folosește acest skill când utilizatorul cere surse, un mini literature review sau o listă de lucrări pe o
temă. Scopul: găsirea de lucrări **reale, verificabile** — nu citări care „sună bine". Riscul numărul unu în
această sarcină e citarea halucinată; întreaga procedură e construită ca s-o prevină.

**Disciplina de fundamentare e obligatorie:** o citare e o afirmație ca oricare alta — are nevoie de o ancoră
reală într-un index. Fără confirmare, nu intră ca fapt (`neverificat ≠ fals`).

## Input
- O temă sau o întrebare de cercetare (ex. „efectul cafelei asupra somnului"), eventual un interval de ani,
  un tip de studiu (RCT, review sistematic) sau o limbă.

## Metodă

1. **Clarifică tema.** Reformulează întrebarea în 1-2 termeni de căutare. Dacă e prea vagă, întreabă o dată.
2. **Caută în indexuri reale.** Folosește căutarea web și, dacă sunt instalate, skill-urile de bază de date
   (`literature_search_europepmc`, `pubmed_database`). Țintește surse care dau metadate verificabile: Europe
   PMC, PubMed, Crossref, OpenAlex, DOAJ. **Nu** genera citări din memorie.
   Indexuri care răspund **fără cont și fără cheie** (verificate 7 sept. 2026):
   - PubMed: `https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=TERMENI&retmax=5&retmode=json`
   - Europe PMC: `https://www.ebi.ac.uk/europepmc/webservices/rest/search?query=TERMENI&format=json&pageSize=5`
   - Crossref: `https://api.crossref.org/works?query=TITLU&rows=5`
   > **Semantic Scholar**, fără cheie (reverificat 7 sept. 2026, seara): **căutarea** după cuvinte
   > (`/paper/search`, `/paper/search/match`, `/author/search`) răspunde `429 Too Many Requests`, dar
   > **consultarea unei lucrări cunoscute** merge: `https://api.semanticscholar.org/graph/v1/paper/DOI:10.xxxx/yyy?fields=title,year,venue,citationCount,externalIds`
   > (acceptă și `PMID:`, `ARXIV:`), la fel `/references`, `/citations` și recomandările
   > (`https://api.semanticscholar.org/recommendations/v1/papers/forpaper/DOI:...`). Deci pentru pasul 3,
   > verificarea unui DOI, e utilizabil; pentru pasul 2, căutarea, rămâi pe cele trei de mai sus.
   > Cheia gratuită se cere din formularul de pe semanticscholar.org/product/api, pe nume și email.
3. **Verifică existența fiecărei lucrări.** Pentru fiecare candidat, confirmă că există într-un index real și
   notează DOI-ul și un link funcțional (PMC/DOI). Dacă nu poți confirma o lucrare, **nu o include** — sau
   marcheaz-o explicit `NECONFIRMAT` și separ-o de cele verificate.
4. **Extrage doar ce poți susține.** Pentru fiecare lucrare confirmată: titlu, autori, an, jurnal, DOI/PMC,
   și o propoziție despre ce arată (din abstract, nu din presupunere).
5. **Marchează relevanța și încrederea.** Notează cât de direct răspunde fiecare lucrare la întrebare și
   plafonul de încredere (abstract-only ⇒ cel mult medie).

## Output (obligatoriu)

Scrie în `outputs/literatura-[tema]-[data].md`:

```
| # | Titlu | Autori (et al.) | An | Jurnal | DOI / link | Ce arată (1 propoziție) | Relevanță | Confirmat? |
|---|-------|-----------------|----|--------|------------|--------------------------|-----------|------------|
```

Sub tabel: o secțiune **„Neconfirmate / de verificat manual"** (orice candidat pe care nu l-ai putut confirma),
și o linie **„Pasul următor al omului"** (ce trebuie citit integral / verificat înainte de citare).

## Siguranță
- **Zero citări fabricate.** Fără confirmare într-un index real ⇒ nu intră în tabelul verificat.
- Un titlu plauzibil **nu** e dovadă că lucrarea există. Verifică DOI-ul / link-ul.
- Abstractul nu e lucrarea. Nu afirma rezultate de metodă/limitări pe care abstractul nu le susține.
- **Decizia rămâne a omului:** ce surse intră efectiv în review-ul lui și ce trebuie citit integral.
