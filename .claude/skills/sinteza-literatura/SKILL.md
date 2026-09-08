---
name: sinteza-literatura
description: Sintetizează un corpus de lucrări pe o temă (nu o singură lucrare). Organizează articolele, extrage temele transversale, contradicțiile, limitele și întrebările deschise — fiecare ancorat în sursă, fără rezultate inventate. Folosește când ți se cere o sinteză de literatură, un literature review, „ce spun studiile despre…" sau o privire de ansamblu peste mai multe articole.
---

# Sinteză de literatură (sinteza-literatura)

Folosește acest skill când utilizatorul are **mai multe** lucrări pe o temă și vrea privirea de ansamblu — nu
recenzia unei singure lucrări (pentru asta e `paper-review`), nu căutarea de surse noi (pentru asta e
`cautare-literatura`). Ideea-cheie: partea grea nu e să citești o lucrare, ci să vezi **întregul tablou** — ce
spun studiile la fel, **unde se contrazic**, ce le limitează și ce rămâne nerezolvat. Cel mai util rezultat al
unei sinteze nu e consensul, ci **contradicțiile și golurile**.

**Disciplina de fundamentare e obligatorie.** Fiecare afirmație dintr-o sinteză are nevoie de o ancoră reală în
sursă. Un rezultat pe care o lucrare nu l-a raportat nu intră în sinteză — `neverificat ≠ fals`, dar nici nu se
prezintă ca fapt.

## Input
- Un corpus de lucrări (un folder de articole, ex. `scenarii/literatura/`). Numele fișierelor pot fi
  neîngrijite — identifică fiecare lucrare **după conținut** (titlu, autori, an, DOI din antet), nu după nume.
- Eventual: tema/întrebarea care leagă corpusul, dacă nu e evidentă.

## Metodă

1. **Inventariază corpusul.** Deschide fiecare fișier, identifică lucrarea (titlu, autori, an, jurnal, DOI) și
   ce tip de studiu e. Nu te baza pe numele fișierului.
2. **Extrage per lucrare — doar din sursă.** Pentru fiecare: **tipul de studiu** (RCT, review sistematic,
   observațional…), **eșantionul** (n, populație), **rezultatul/rezultatele principal(e) cu cifre**, și
   **calitatea dovezilor** dacă e raportată. Folosește abstractul și afirmațiile-cheie; nu completa ce nu scrie.
3. **Teme transversale.** Ce întrebare/temă comună leagă lucrările? Grupează rezultatele pe teme, nu pe lucrări.
4. **Contradicții & tensiuni.** Unde nu sunt de acord lucrările — sau unde aceeași temă dă rezultate diferite.
   Caută activ: **măsuri subiective vs. obiective**, populații diferite, **calitate de dovezi inegală**,
   moderatori individuali (vârstă, sex, metabolism, obișnuință, moment). Numește lucrările implicate.
5. **Limite ale corpusului.** Eșantioane mici, design observațional, un singur centru, populații înguste,
   măsuri neuniforme care nu se pot pune cap la cap.
6. **Întrebări deschise / goluri.** Ce rămâne nerezolvat; ce ar cere un studiu viitor.
7. **Separă ce *arată* o lucrare de ce *inferi* tu.** Nu inventa un rezultat, un autor, o cifră sau un DOI. Ce
   nu e în sursă merge la „De verificat la sursă", nu în tabel ca fapt.

## Output (obligatoriu)

Scrie în `outputs/sinteza-literatura-[tema]-[data].md`:
- o propoziție: **ce întrebare/temă** acoperă corpusul;
- **tabelul corpusului:**

```
| # | Lucrare (autor, an) | Tip studiu & eșantion | Rezultat principal (cu cifră) | Calitatea dovezilor | DOI / link |
|---|---------------------|-----------------------|-------------------------------|---------------------|------------|
```

- **Teme transversale** (grupate pe temă, cu lucrările care le susțin);
- **Contradicții & tensiuni** (cu lucrările implicate și ce anume diferă);
- **Limite** (ale corpusului ca întreg);
- **Întrebări deschise**;
- o secțiune finală **„De verificat la sursă"** (orice afirmație inferată sau neconfirmată în abstracte).

## Siguranță
- **Zero rezultate sau citări inventate.** Fără sursă în mână ⇒ nu intră ca fapt; abstractul **nu** e lucrarea
  integrală — nu afirma metode/limitări pe care abstractul nu le susține.
- **Corelație ≠ cauzalitate.** Un rezultat dintr-un studiu mic sau observațional nu e „dovedit".
- **Calitatea dovezilor contează cât rezultatul.** Nu pune o meta-analiză de calitate scăzută și un RCT pe
  picior de egalitate fără s-o spui.
- **Decizia rămâne a omului:** ce intră în review-ul lui și ce trebuie citit integral înainte de a cita.
