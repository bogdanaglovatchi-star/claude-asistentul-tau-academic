---
name: executie-bugetara
description: Calculează execuția bugetară a unui proiect din fișierul de buget — planificat vs. cheltuit pe categorii și pe total, procentul de execuție, abaterile de justificat — și scoate un tabel gata de pus în raport plus un grafic HTML. Folosește când ți se cere execuția bugetară, situația cheltuielilor, sau când trebuie verificată o cifră de buget scrisă de mână într-o ciornă.
---

# Execuție bugetară (executie-bugetara)

Procedura pentru cifra pe care o cere orice finanțator: **cât s-a planificat, cât s-a cheltuit, cât la
sută, și ce abatere trebuie justificată.** Regula pe care o ține procedura asta e simplă și
non-negociabilă: **cifra vine din fișierul de buget, calculată, nu din ciornă și nu din memorie.**

## Input
- Fișierul de buget al proiectului (CSV), cu o coloană de categorie, una de planificat și una de cheltuit.
- Opțional: o cifră scrisă „din memorie" într-o ciornă moștenită, pe care o confruntăm cu realitatea.

## Metodă

1. **Uită-te întâi la fișier**, nu la ciornă. Deschide bugetul, vezi ce coloane are și ce perioadă acoperă.
2. **Rulează codul**, nu estima. Partea de cod a acestei proceduri e `scripts/executie_buget.sh`:
   ```
   bash .claude/skills/executie-bugetara/scripts/executie_buget.sh \
        scenarii/date/buget-proiect.csv outputs/executie-buget-[data].html
   ```
   Adaugă `--din-memorie N` când vrei să confrunți o cifră dintr-o ciornă cu cea calculată.
   Scriptul folosește doar `bash`, `awk` și `sort` — merge nativ pe macOS și, pe Windows, prin Git Bash
   (Git e oricum obligatoriu pentru tab-ul Code). Nu are nevoie de Python și nu instalează nimic.
3. **Numește abaterile pe nume.** Orice categorie peste 110% e o **depășire** care se justifică; orice
   categorie sub 90% e o **subexecuție** care se explică. Nu le netezi și nu le ascunde într-un total
   care „arată bine".
4. **Confruntă cu ciorna,** dacă există una. Când cifra scrisă de mână diferă de cea calculată, scrie
   explicit ambele și spune care e corectă și de ce.
5. **Scrie tabelul în forma cerută de raport** — categorie, planificat, cheltuit, %, abatere, total.

## Output (obligatoriu)

Scrie în `outputs/executie-buget-[data].md`:
- tabelul planificat vs. cheltuit pe categorii și total, cu procentul de execuție;
- secțiunea **„Abateri de justificat"**, cu o propunere de justificare pentru fiecare;
- dacă e cazul, secțiunea **„Cifre corectate față de ciornă"** (ce scria, ce e în fișier, diferența);
- calea către graficul HTML generat.

## Siguranță
- **Nicio cifră nu se scrie fără să fi fost calculată din fișier.** Dacă fișierul nu acoperă o perioadă
  sau o categorie cerută, scrie „lipsește din sursă", nu estima.
- **Justificarea unei abateri este o decizie umană.** Tu propui formularea; motivul real îl știe echipa.
- Cifra finală care pleacă la finanțator se confruntă cu **contabilitatea**, nu doar cu acest CSV.
