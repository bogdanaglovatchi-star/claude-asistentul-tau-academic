---
name: declaratie-ai
description: Scrie declarația de utilizare a instrumentelor de IA pentru o lucrare, un raport de proiect sau o cerere de finanțare, în forma cerută de politica destinatarului (COPE, ICMJE, Nature, JAMA, cadrul european) și pe baza a ce s-a folosit efectiv. Folosește când ți se cere o declarație privind utilizarea IA, o secțiune de transparență sau când trimiți un material unde se cere declararea.
---

# Declarația de utilizare a IA (declaratie-ai)

Toate politicile majore cer același lucru: **AI-ul nu poate fi autor, folosirea lui se declară,
răspunderea rămâne integral umană.** Ce diferă e *unde* se declară și *cât de detaliat*. Procedura asta
scrie declarația potrivită destinatarului, pe baza a ce s-a folosit cu adevărat.

## Input
- Ce s-a folosit efectiv (instrument, versiune, la ce anume: căutare, sinteză, redactare, cod, corectură).
- Destinatarul: jurnal, finanțator, universitate.
- Politicile din `scenarii/politici-ai-cercetare/` ca referință.

## Metodă

1. **Întreabă întâi ce s-a folosit și pentru ce** — nu presupune. Declarația greșită e mai rea decât
   lipsa ei. Dacă omul nu știe exact, ajută-l să reconstituie din folder ce a fost produs cu AI.
2. **Citește politica destinatarului** din `scenarii/politici-ai-cercetare/` (sau cere linkul ei) și
   reține: unde se declară (Metode / Mulțumiri / câmp separat), ce nivel de detaliu cere, ce e exceptat.
3. **Aplică punctele de consens** peste orice formulare: AI ≠ autor, folosirea se declară, responsabilitatea
   e umană, iar citările generate cu AI se verifică una câte una. Excepția pentru corectura de limbă nu mai e
   comună (JAMA o dă doar pentru gramatică și ortografie de bază, Nature a scos-o), deci verifică politica
   destinatarului, nu presupune.
4. **Scrie declarația scurtă și exactă**, la persoana potrivită, cu instrumentul numit și scopul precizat.
   Fără formulări defensive și fără a minimiza ce s-a folosit.
5. **Spune unde se pune** în documentul final și ce mai trebuie bifat (ex. o casetă în platforma de submisie).

## Output (obligatoriu)

Scrie în `outputs/declaratie-ai-[destinatar]-[data].md`:
- textul declarației, gata de copiat;
- **unde** se pune, conform politicii citate (cu fișierul-sursă);
- ce **nu** intră în declarație și de ce;
- ce mai trebuie confirmat de autor înainte de depunere.

## Siguranță
- **Nu declara mai puțin decât s-a folosit.** Dacă ai dubii, declari.
- **Nu inventa numele politicii sau al secțiunii.** Citează fișierul de politică din care ai luat regula.
- Textul final și asumarea lui **sunt ale autorului**, nu ale tale.
