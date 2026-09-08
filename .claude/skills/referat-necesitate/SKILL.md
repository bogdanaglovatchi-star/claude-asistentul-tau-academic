---
name: referat-necesitate
description: Redactează un referat de necesitate pentru o achiziție dintr-un proiect de cercetare, pornind de la ce e deja în folder (minute, e-mailuri, buget, notițe). Justifică nevoia prin obiectivul de proiect, ia valoarea estimată din bugetul real și marchează ce lipsește. Folosește când ți se cere un referat de necesitate, o notă de fundamentare a unei achiziții sau justificarea unei cheltuieli.
---

# Referat de necesitate (referat-necesitate)

Documentul cu care începe orice achiziție dintr-un proiect: **de ce am nevoie de asta, pentru ce
obiectiv, cât costă și de unde se plătește.** E scurt, dar se blochează des — pentru că justificarea
trebuie legată de un obiectiv real, iar suma trebuie să existe în linia de buget.

## Input
- Folderul de proiect (minute, e-mailuri, notițe) — de acolo iese **nevoia** și **obiectivul**.
- Fișierul de buget — de acolo iese **linia bugetară** și cât a mai rămas pe ea.
- Șablonul `templates/referat-de-necesitate.md`.

## Metodă

1. **Găsește nevoia în sursă**, nu în capul tău. Caută în folder unde s-a decis sau s-a cerut achiziția
   (o minută, un e-mail, o notiță) și citează fișierul.
2. **Leagă-o de un obiectiv de proiect.** Un referat care spune „avem nevoie de un laptop" nu trece;
   unul care spune „pentru colectarea datelor la O2, conform minutei din…" trece. Dacă legătura cu un
   obiectiv nu există în folder, **scrie „[de completat de responsabil]"** — nu o inventa.
3. **Ia valoarea din buget**, pe linia bugetară potrivită, și verifică dacă mai încape acolo (rulează
   procedura `executie-bugetara` dacă ai nevoie de disponibil). Dacă valoarea nu e în niciun fișier,
   scrie „[estimare de confirmat]" — o cifră inventată într-un referat e o problemă reală.
4. **Completează șablonul** din `templates/referat-de-necesitate.md`, fără să-i schimbi structura.
5. **Listează la final ce lipsește** ca să poată fi semnat: aprobări, coduri, specificații tehnice.

## Output (obligatoriu)

Scrie în `outputs/referat-necesitate-[obiect]-[data].md`, în formatul șablonului, cu:
- fiecare afirmație de justificare **citată la fișierul din care provine**;
- valoarea estimată cu sursa ei (linie de buget / ofertă / „de confirmat");
- secțiunea **„De completat înainte de semnare"**.

## Siguranță
- **Nu inventa** valori, coduri CPV, nume de furnizori sau numere de înregistrare.
- Un referat e un document care produce o cheltuială publică. **Semnătura și răspunderea sunt umane** —
  tu produci un draft verificabil, nu un document final.
