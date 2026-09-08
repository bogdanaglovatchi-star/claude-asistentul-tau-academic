---
name: paper-review
description: Review structurat al unei lucrări academice, condus de un panel de subagenți (editor + 2-3 reviewer-i pe dimensiuni diferite + un avocat al diavolului), cu scor 0-100 și recomandare. Folosește când ți se cere să recenzezi, să critici sau să evaluezi o lucrare științifică.
---

# Paper review cu panel de subagenți (paper-review)

> Inspirat din protocoalele de review din `aspi6246/Claude-Code-Skills-for-Academics` (`paper-review`,
> `edmans-audit`) și din panelul multi-agent de tip „EIC + reviewers + Devil's Advocate". Vezi `ATTRIBUTION.md`.

Folosește acest skill când utilizatorul vrea un review al unei lucrări. Ideea-cheie: **nu** un singur verdict,
ci un **panel** — mai mulți „reviewer-i" cu perspective diferite, lansați ca **subagenți** care lucrează
independent, apoi un editor care sintetizează. Diversitatea de unghiuri prinde ce un singur trecere ratează.

## Input
- O lucrare (fișier) — ideal cu Metode și Rezultate. Eventual ținta jurnalului / tipul de articol.

## Metodă (panel de subagenți)

1. **Editorul (tu) împarte munca.** Citește lucrarea o dată și stabilește dimensiunile de evaluat.
2. **Lansează reviewer-i ca subagenți**, fiecare cu o singură lentilă, în paralel:
   - **Reviewer 1 — Contribuție & noutate:** ce adaugă? E semnificativ? E nou?
   - **Reviewer 2 — Metode & statistică:** designul susține concluziile? Eșantion, grup de control, teste,
     confuzori, mărimea efectului vs. semnificație.
   - **Reviewer 3 — Claritate & raportare:** structură, figuri, reproductibilitate, limite declarate onest.
   - **Avocatul diavolului:** încearcă activ să *respingă* lucrarea — cel mai slab punct, interpretarea
     alternativă, ce ar cere un recenzent ostil.
3. **Fiecare subagent întoarce:** 3-5 observații concrete (cu locul în text), puncte tari, puncte slabe, și un
   scor parțial 0-100 pe dimensiunea lui.
4. **Editorul sintetizează:** combină observațiile, rezolvă dezacordurile, dă un **scor global 0-100** și o
   **recomandare** din setul închis de mai jos.
5. **Nicio afirmație inventată.** Fiecare critică trebuie să indice un loc real în lucrare. Dacă ceva lipsește
   din lucrare, spune „nu e raportat", nu presupune.

## Recomandare (set închis)
Alege exact una: **accept** · **minor revisions** · **major revisions** · **reject**.

## Output (obligatoriu)

Scrie în `outputs/review-[lucrare]-[data].md`:
- un rezumat de o propoziție al lucrării;
- pe fiecare reviewer: puncte tari / puncte slabe / scor parțial;
- raportul avocatului diavolului;
- **scorul global (0-100)** + **recomandarea** (set închis) + justificarea;
- o secțiune **„Întrebări pentru autori"** și una **„Decizia editorului rămâne a omului"**.

## Siguranță
- **Pentru propria lucrare, nu pentru peer review de jurnal.** Folosește-l ca să-ți critici propriul material
  înainte de submisie. A face peer review cu AI la manuscrisul altcuiva pentru un jurnal e o activitate
  sensibilă, descurajată de liniile directoare (ex. ERA Forum / Comisia Europeană) — manuscrisul altcuiva nu se
  încarcă într-un tool AI.
- **Nu inventa defecte și nu inventa calități.** Fiecare punct se leagă de un loc real din text.
- **Separă „nu e raportat" de „e greșit".** Absența nu e eroare.
- **Review-ul nu e o decizie.** Tu, autorul (sau editorul uman), decizi; skill-ul produce doar materialul.
