---
name: verificare-citari
description: Verifică dacă lucrările citate într-un text există cu adevărat și dacă datele lor (autori, an, jurnal, DOI/PMID) sunt corecte, interogând indexuri publice — PubMed, Europe PMC, Crossref. Marchează fiecare citare drept confirmată, greșită sau negăsită. Folosește când ai de verificat o bibliografie, o listă de referințe sau o afirmație atribuită unui studiu.
---

# Verificarea citărilor (verificare-citari)

Riscul numărul unu al AI-ului în cercetare e citarea care sună perfect și nu există. Procedura asta îl
atacă direct: **nu te întreabă pe tine dacă o lucrare există, întreabă indexul.**

## Input
- Un text cu citări, o bibliografie, sau o listă de afirmații atribuite unor studii.

## Metodă

1. **Extrage citările** din text, una câte una: autor(i), an, titlu, jurnal, DOI/PMID dacă apar.
2. **Întreabă sursa oficială**, nu memoria. Indexuri publice care răspund fără cont:
   - **PubMed (E-utilities)** — biomedical:
     `https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=TERMENI&retmax=5&retmode=json`
     apoi `esummary.fcgi?db=pubmed&id=ID1,ID2&retmode=json` pentru titlu, autori, an, jurnal.
   - **Europe PMC** — biomedical, cu text integral când e open access:
     `https://www.ebi.ac.uk/europepmc/webservices/rest/search?query=TERMENI&format=json&pageSize=5`
   - **Crossref** — orice domeniu, verificarea unui DOI:
     `https://api.crossref.org/works/DOI` sau `https://api.crossref.org/works?query=TITLU&rows=5`
   > **Semantic Scholar** are un API bun, dar fără cheie răspunde des `429 Too Many Requests`
   > (verificat 7 sept. 2026). Dacă îl folosești, cere-ți o cheie gratuită; altfel rămâi pe cele trei de mai sus.
3. **Compară câmp cu câmp** ce spune textul cu ce spune indexul: autorii, anul, jurnalul, titlul.
4. **Dă fiecărei citări un verdict**, dintr-un set închis:
   - ✅ **confirmată** — găsită, datele se potrivesc (pune identificatorul real: DOI/PMID);
   - ⚠️ **cu erori** — lucrarea există, dar un câmp e greșit (spune care și cum e corect);
   - ❌ **negăsită** — nu apare în indexuri. **„Negăsită" nu înseamnă „falsă"** — poate fi o carte, un
     raport, o teză, ceva neindexat. Spune exact asta.
5. **Verifică și afirmația, nu doar existența.** Dacă textul spune „studiul X a arătat că…", nota ta e
   dacă lucrarea chiar susține asta — sau dacă asta nu se poate stabili din abstract.

## Output (obligatoriu)

Scrie în `outputs/verificare-citari-[data].md`:
- un tabel: *Citare din text · Verdict · Ce spune indexul · Identificator real · Observație*;
- lista citărilor **de corectat** și a celor **de căutat manual**;
- o notă onestă despre ce **nu** ai putut verifica și de ce.

## Siguranță
- **Nu completa niciodată un DOI, un PMID sau un an ca să arate tabelul complet.** Un identificator
  inventat e exact eroarea pe care procedura asta există ca s-o prindă.
- Un API poate pica sau își poate schimba forma. Dacă apelul a eșuat, **spune că a eșuat**; nu raporta
  un rezultat pe care nu l-ai primit.
- Verdictul final pe o citare dintr-un manuscris **rămâne al autorului**.
