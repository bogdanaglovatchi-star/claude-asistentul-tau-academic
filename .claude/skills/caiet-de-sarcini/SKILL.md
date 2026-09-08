---
name: caiet-de-sarcini
description: Construiește un caiet de sarcini pentru o achiziție de proiect, cu cerințe separate în obligatorii și opționale, criterii de acceptanță verificabile și o grilă de evaluare a ofertelor. Folosește când ți se cere un caiet de sarcini, o specificație de achiziție sau criterii pentru compararea ofertelor.
---

# Caiet de sarcini (caiet-de-sarcini)

Documentul care hotărăște, de fapt, ce ofertă câștigă. Regula pe care o ține procedura asta:
**o cerință care nu se poate verifica nu e o cerință.** „Calitate bună" nu se poate verifica;
„suport tehnic în limba română, în 24 de ore lucrătoare" se poate.

## Input
- Nevoia (din referatul de necesitate sau din folderul de proiect).
- Constrângerile reale: buget disponibil, termen, cerințe ale finanțatorului.
- Șablonul `templates/caiet-de-sarcini.md`.

## Metodă

1. **Separă cerințele în două liste, explicit:** *obligatorii* (must — cine nu le îndeplinește e
   descalificat, indiferent de preț) și *opționale* (nice — punctează, nu descalifică).
2. **Fă fiecare cerință verificabilă.** Pentru fiecare, scrie **cum se dovedește** (document, test,
   demonstrație). Dacă nu poți scrie cum se verifică, cerința e o părere — reformuleaz-o sau scoate-o.
3. **Scrie criteriile de acceptanță** — ce trebuie să fie adevărat la recepție ca să semnezi.
4. **Construiește grila de evaluare:** ponderi care adună 100, cu preț ca **un** criteriu, nu singurul.
5. **Marchează ce trebuie decis de om:** ponderea prețului, termenul, orice cerință care ar putea
   restrânge nejustificat concurența (asta e o problemă legală, nu una de redactare).

## Output (obligatoriu)

Scrie în `outputs/caiet-de-sarcini-[obiect]-[data].md`, în formatul șablonului, cu:
- tabelul cerințelor obligatorii, fiecare cu metoda ei de verificare;
- tabelul cerințelor opționale, cu punctajul;
- criteriile de acceptanță la recepție;
- grila de evaluare cu ponderi;
- secțiunea **„De decis de responsabil"**.

## Siguranță
- **Nu inventa** standarde, coduri, norme sau cerințe legale. Dacă un standard e invocat în sursă,
  citează-l; dacă nu, scrie „[de verificat cu compartimentul de achiziții]".
- **Nu formula cerințe care descriu un singur produs** — semnalează-i omului când o cerință pare să
  țintească un furnizor anume.
- Conformitatea cu legislația achizițiilor și cu regulile finanțatorului **se verifică de om**.
