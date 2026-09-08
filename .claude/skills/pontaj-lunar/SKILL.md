---
name: pontaj-lunar
description: Transformă notițele de pontaj (ore aproximative, ciorne, mesaje) într-un pontaj lunar structurat pe persoană și activitate, separând clar orele confirmate de cele aproximative. Folosește când ți se cere un pontaj, o situație a orelor lucrate pe proiect sau fișa de prezență pentru raportare.
---

# Pontaj lunar (pontaj-lunar)

Pontajul e locul unde „aproximativ" devine o problemă: orele merg în decont, decontul merge la
finanțator. Procedura asta face un singur lucru esențial — **separă ce e confirmat de ce e estimat**,
în loc să le amestece într-un tabel care arată sigur pe sine.

## Input
- Ciornele de pontaj din folder (notițe, mesaje, ciorne cu „cca", „aproximativ", „de confirmat").
- Șablonul `templates/pontaj-lunar.md`.
- Dacă există: limita de ore/lună din contract sau din regulile finanțatorului.

## Metodă

1. **Adună toate mențiunile de ore** din folder, pe persoană, cu fișierul-sursă lângă fiecare.
2. **Marchează statutul fiecărei cifre:** `confirmat` (scris ca număr exact, de persoana în cauză) sau
   `aproximativ` (apare cu „cca", „vreo", „mi-a zis pe telefon", „de confirmat"). **Nu rotunji o cifră
   aproximativă ca să pară confirmată** — asta e toată miza procedurii.
3. **Semnalează ce e ambiguu**, nu-l rezolva singur: ore de deplasare/congres care ar putea intra sau nu
   ca ore de proiect, suprapuneri cu concediu, persoane care apar în minute dar nu în pontaj.
4. **Calculează totalurile** separat: total confirmat, total cu tot cu aproximări, și diferența dintre ele.
5. **Scrie lista de confirmări cerute**, pe persoană: cine trebuie să confirme ce, până când.

## Output (obligatoriu)

Scrie în `outputs/pontaj-[luna]-[data].md`, în formatul șablonului, cu:
- tabelul pe persoană: ore, activitate, **statut** (confirmat / aproximativ), fișier-sursă;
- totalurile, separat confirmat vs. estimat;
- secțiunea **„De confirmat înainte de depunere"**, cu numele oamenilor care trebuie să răspundă.

## Siguranță
- **Nu completa ore lipsă** și nu deduce ore dintr-un salariu sau dintr-un procent de normă.
- Pontajul semnat este o declarație. **Semnătura și răspunderea sunt ale oamenilor**, nu ale tale.
