---
name: profilare-date
description: Profilează sistematic un tabel de date (CSV) și produce un grafic care spune o poveste. Identifică unitatea de observație, tipurile de coloane, valorile lipsă și problemele de calitate, apoi compară grupuri și desenează o vizualizare onestă. Folosește când ți se cere să explorezi, să rezumi, să compari sau să vizualizezi un set de date.
---

# Profilare de date (profilare-date)

> Inspirat din skill-ul `data-profiler` (`aspi6246/Claude-Code-Skills-for-Academics`). Vezi `ATTRIBUTION.md`.

Folosește acest skill când utilizatorul îți dă un set de date și vrea să-l înțeleagă sau să-l vizualizeze.
**Nu sări direct la grafic** — întâi înțelegi datele, apoi alegi o vizualizare care spune ceva adevărat.

## Input
- Un fișier de date (CSV) din folder. Eventual o întrebare („diferă X între grupuri?").

## Metodă

1. **Citește și profilează.** Rulează partea de cod a acestei proceduri:
   ```
   bash .claude/skills/profilare-date/scripts/profil_tabel.sh \
        scenarii/date/boli-cardiace.csv outputs/profil-[nume]-[data].html \
        --grup boala_cardiaca --valoare puls_maxim
   ```
   Îți dă: numărul de rânduri, coloanele și tipurile lor, valorile lipsă, duplicatele, iar dacă îi dai
   `--grup` și `--valoare`, comparația între grupuri (n, medie, mediană, min, max) și graficul HTML.
   Scriptul folosește doar `bash`, `awk` și `sort` — nativ pe macOS, prin Git Bash pe Windows. Fără Python.
2. **Identifică unitatea de observație.** Un rând = ce? (un pacient, o lună, o cheltuială). Spune-o.
3. **Verifică calitatea și spune ce ai găsit.** Valori lipsă, valori imposibile (vârstă 0, tensiune
   negativă), duplicate, grupuri dezechilibrate. **Nu le ascunde** — sunt jumătate din informație.
4. **Formulează întrebarea.** Dacă omul nu a dat una, propune 1–2 pe care datele chiar le pot susține.
5. **Scrie ce arată — și ce NU arată.** O propoziție despre tipar, apoi limitele: corelație ≠ cauzalitate,
   confuzori posibili, vechimea și proveniența setului, dimensiunea grupurilor.

## Output (obligatoriu)

Scrie în `outputs/profil-date-[nume]-[data].md`:
- rezumatul profilării (rânduri, coloane + tipuri, valori lipsă, probleme de calitate);
- întrebarea aleasă și comparația pe grupuri, cu cifrele **calculate**;
- calea către graficul HTML generat;
- **„Ce arată"** (1–2 propoziții) și **„Ce NU putem concluziona"** (limitele).

## Siguranță
- **Nu inventa cifre.** Tot ce raportezi vine din rularea efectivă a codului, nu din memorie. Dacă
  scriptul nu a rulat, spune că nu a rulat — nu completa cu valori plauzibile.
- **Nu trata o diferență descriptivă drept rezultat statistic**, și nici corelația drept cauzalitate.
- **Date de pacienți sau nepublicate:** nu le procesa fără decizia explicită a omului asupra a ce expune.
- **Decizia rămâne a omului:** ce întrebare merită urmărită și ce concluzie e justificată științific.
