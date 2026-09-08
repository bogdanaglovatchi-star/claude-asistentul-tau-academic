---
name: raport-activitate
description: Întocmește un raport de activitate / raportare intermediară de proiect dintr-un folder de materiale dezordonate (minute, e-mailuri, pontaje, notițe) și un fișier de buget, urmând un șablon dat. Extrage faptele, verifică fiecare cifră în sursă și marchează ce e neconfirmat. Folosește când ți se cere un raport de activitate, un raport de proiect, o raportare intermediară sau completarea unui șablon de raport.
---

# Raport de activitate (raport-activitate)

Folosește acest skill când utilizatorul (un administrator de proiect) vrea un **raport de activitate** dintr-un
folder de materiale și un buget, după un șablon. **Tu aduni și structurezi faptele**; deciziile (ce se trimite,
cum se formulează o abatere) rămân ale omului. Disciplina centrală: **nicio cifră fără sursă.**

## Input
- Un folder cu materialul brut (ex. `scenarii/proiect-haos/`): minute, e-mailuri, notițe, pontaje, ciorne.
- Un fișier de buget (ex. `scenarii/date/buget-proiect.csv`): planificat vs. cheltuit pe categorii.
- Un **șablon** (ex. `templates/raport-activitate.md`) care dictează formatul.

## Metodă

1. **Citește tot folderul.** Deschide fiecare fișier (numele e neîngrijit — contează conținutul). Extrage:
   obiective și stadiu, recrutare/indicatori, achiziții, diseminare, termene, probleme.
2. **Tratează ciornele moștenite cu suspiciune.** Dacă există un draft anterior, **nu prelua cifrele din el** —
   pot fi scrise „din memorie". Folosește-le doar ca indiciu despre ce trebuie completat.
3. **Calculează execuția bugetară din CSV, prin cod.** Nu o refaci de la zero: pornește procedura
   `executie-bugetara`, care are pentru asta o parte de cod fără dependințe
   (`bash .claude/skills/executie-bugetara/scripts/executie_buget.sh <buget.csv> <output.html>`).
   **Nu estima** procentele, calculează-le. Preia de acolo tabelul pe categorii, totalul și abaterile
   (categorii peste 110% sau sub 90%) și pregătește-le pentru secțiunea de justificare.
4. **Confruntă fiecare cifră din materiale cu sursa.** Recrutare, valori, ore: dacă o cifră apare în notițe dar
   se bate cap în cap cu altă sursă (ex. „recrutați" vs. „activi"), **semnalează discrepanța**, nu o netezi.
5. **Completează șablonul.** Respectă exact structura din fișierul-șablon. Fiecare cifră primește o mențiune de
   sursă. Ce nu poți confirma din folder merge la **„De verificat înainte de depunere"** — nu se ghicește.

## Output (obligatoriu)

Scrie în `outputs/raport-activitate-[perioada]-[data].md`, urmând șablonul, cu:
- tabelul obiectivelor și cel de execuție bugetară **completate cu cifre calculate din CSV**;
- justificarea abaterilor bugetare reale;
- o secțiune **„De verificat înainte de depunere"** cu tot ce a rămas neconfirmat sau contradictoriu;
- secțiunea de **declarație IA** marcată pentru decizia omului.

## Siguranță
- **Zero cifre inventate sau „din memorie".** Fiecare număr se calculează din CSV sau se citează dintr-o sursă;
  ce nu există în folder se trece la „de verificat".
- **Discrepanțele se arată, nu se ascund** (ex. total din ciornă ≠ total din buget; recrutați ≠ activi).
- **Date sensibile:** nu adăuga date de pacienți identificabile în raport; ține-l la nivel de indicatori.
- **Decizia și răspunderea rămân ale omului:** raportul e un draft verificabil, nu un document final aprobat.
