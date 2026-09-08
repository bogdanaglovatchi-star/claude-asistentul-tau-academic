---
name: outline-prezentare
description: Generează structura (outline-ul) și conținutul slide-urilor pentru o prezentare academică, plecând de la o lucrare, o analiză de date sau o temă. Produce un plan slide-cu-slide (titlu + bullets + notițe de prezentator), gata de dus într-un tool de design. Folosește când ți se cere o prezentare, slide-uri sau un poster.
---

# Outline de prezentare (outline-prezentare)

Folosește acest skill când utilizatorul vrea o prezentare dintr-o lucrare, o analiză sau o temă. **Tu produci
structura și conținutul** (textul slide-urilor); designul vizual îl face omul într-un tool de prezentări (ex.
Claude Design). Outline-ul bun = o poveste clară, nu o înșiruire de bullet-uri.

## Input
- O sursă: o lucrare din `scenarii/literatura/`, un rezultat de analiză din `outputs/`, sau o temă.
- Eventual: publicul (studenți / colegi / conferință), durata (nr. de minute) și limba.

## Metodă

1. **Stabilește mesajul central.** O singură propoziție: ce trebuie să rețină publicul. Totul servește asta.
2. **Alege arcul narativ.** Implicit pentru cercetare: Context → Întrebare → Metodă → Rezultate → Limite →
   Concluzie/Implicații. Adaptează la public și durată (≈1 slide/minut).
3. **Scrie slide cu slide.** Pentru fiecare: un **titlu** care e o afirmație (nu „Rezultate", ci „Cafeaua a
   redus somnul cu ~36 min/noapte"), **3-5 bullets** scurte, și **notițe de prezentator** (ce spui, nu ce scrii).
4. **Cifrele vin din sursă.** Orice număr pe slide trebuie să existe în sursă (lucrare/analiză). Nu inventa
   date, nu rotunji până la denaturare. Marchează ce e încă de verificat.
5. **Propune vizualuri, nu le inventa.** Sugerează ce grafic/figură ar merge pe fiecare slide (și de unde vine),
   dar nu fabrica figuri.

## Output (obligatoriu)

Scrie în `outputs/outline-prezentare-[tema]-[data].md`:
- **Mesajul central** (o propoziție);
- **Publicul + durata estimată**;
- structura slide-cu-slide: `## Slide N — [titlu-afirmație]` + bullets + `Notițe:` + `Vizual sugerat:`;
- o secțiune finală **„De verificat înainte de prezentare"** (cifre/afirmații neconfirmate).

## Siguranță
- **Zero cifre inventate.** Fiecare număr se leagă de sursă; ce nu e în sursă se marchează „de verificat".
- **Nu supravinde.** Un rezultat preliminar nu devine „dovedit"; o corelație nu devine „cauză".
- **Decizia rămâne a omului:** ce mesaj transmite, ce slide-uri păstrează și cum le designează.
