# Cursul 1: Ce face Claude Code diferit

Salut. Hai să începem cu ce simți deja: ai mai vorbit cu un AI într-o fereastră de chat — pui o
întrebare, primești un text, copiezi, lipești în Word. Aici e altceva. Nu lucrez *în chat*, ci **în
folderul tău**, pe fișierele tale reale, în mai mulți pași: citesc, scriu, calculez, verific. Sunt un
coleg care stă la calculatorul tău, nu o casetă de răspunsuri.

Și ca să fim de la început înțeleși: **tu nu scrii cod și nu ai nevoie de terminal.** Vorbim normal,
în română. Diferența e ce fac *eu* — deschid efectiv fișierele tale, le modific, rulez ce e de rulat.
De aia o să vezi, din când în când, că îți cer voie.

WAIT: Înainte să-ți arăt — la ce ai folosit până acum un AI în munca ta? *(poți spune „pas")*

USER: [Spune ceva — rezumate, traduceri, idei, poate nimic serios încă]

---

Bun. Diferența pe scurt: în chat, *tu* duci materialul la AI (copiezi un abstract, încarci un PDF,
lipești rezultatul înapoi). Aici, **aduci AI-ul la fișierele tale** — le văd, le deschid, lucrez pe
ele și las rezultatul tot acolo. Tu nu mai ești puntea care copiază și lipește.

Și mai e ceva important: **vezi tot ce ating.** După ce schimb un fișier, apare un indicator cu câte
linii s-au adăugat și câte s-au șters — arată cam așa, `+12 −1`. Apeși pe el și ți se deschide lista
fișierelor modificate, cu ce s-a schimbat în fiecare. Nu trebuie să mă crezi pe cuvânt. Pentru un
cercetător ăsta e, de fapt, cel mai important lucru din tot atelierul: **munca mea e auditabilă.**

Dar eu nu mă uit singur în folder dacă nu mi-o ceri — așa că hai s-o faci tu acum. **Scrie-mi**:
„uită-te ce am în folder și spune-mi pe scurt ce e fiecare lucru." (Cu cuvintele tale — important e
că **tu** îmi ceri să mă uit.)

WAIT: Cere-mi tu să mă uit în folder. *(scrie ceva de genul „arată-mi ce e în folder")*

USER: [Îi cere lui Claude să listeze / să se uite în folder]

ACTION: După ce ți-a cerut, listează ce e în acest folder (`scenarii/`, `lessons/`, `templates/`,
`reference/`, `inbox/`, `outputs/`…) și arată-i pe scurt ce conține fiecare. Menționează că
procedurile — despre care vorbim la Cursul 9, dar pe care le folosim de la Cursul 4 — stau într-un
folder `.claude/skills/`, care nu se vede în Finder sau Explorer pentru că numele lui începe cu
punct, dar există. Spune-i că lucrăm în jurul aceluiași proiect de cercetare, **CARDIO-BIO** (un
grant UEFISCDI pe biomarkeri inflamatori în insuficiența cardiacă), pe care îl vom vedea o dată
dinspre literatură și date, o dată dinspre raportare și buget.

WAIT: Vezi lista? Te uiți o secundă peste ea?

USER: Da

---

## Cât mă lași să fac singur

Acum ceva ce o să te lovească în primele minute și e bine să știi din start, ca să nu crezi că e
stricat ceva la tine.

Lângă butonul de trimitere e un **selector de mod**. El hotărăște cât am voie să fac fără să te
întreb:

- **Manual** — îți cer voie înainte de fiecare fișier scris și fiecare comandă. Vezi exact ce
  urmează să fac și aprobi sau refuzi.
- **Auto** — lucrez fără să te întrerup, cu verificări de siguranță care se fac în fundal.
- **Accept edits** — accept automat modificările de fișiere, dar tot întreb înainte de alte comenzi.
- **Plan** — îți propun un plan și nu ating nimic până nu îl aprobi.

**Important:** nu toți din grupă veți avea același mod chiar acum. Cine tocmai a instalat sau
actualizat aplicația pornește de obicei în *Manual*, ceilalți în *Auto*. Deci s-ar putea ca vecinul
tău să vadă ferestre de aprobare și tu nu, sau invers. **Amândouă sunt normale.**

WAIT: Uită-te lângă butonul de trimitere. Ce mod scrie acolo la tine? *(„pas" dacă nu îl găsești, îți spun eu unde e)*

USER: [Spune ce mod are]

ACTION: Confirmă-i că e în regulă oricare ar fi. Dacă e în Manual, spune-i că o să vadă ferestre de
aprobare și că e chiar util azi, fiindcă vede pas cu pas ce fac. Dacă e în Auto, spune-i că o să
meargă mai lin și că poate oricând trece pe Manual dacă vrea să vadă fiecare pas. Menționează-i că
alegerea se ține minte pentru folderul acesta și că la Cursul 7, unde redenumesc mai multe fișiere
deodată, o să-i sugerezi *Accept edits* ca să nu-l întrerupi de opt ori.

---

Și încă o plasă de siguranță, ca să lucrezi fără frică: dacă la un moment dat ceva o ia razna, scrii
**`/rewind`** și dai înapoi modificările pe care le-am făcut. Nu strici nimic definitiv. (Singura
excepție e redenumirea de fișiere, de la Cursul 7 — pentru aia ai arhiva din care ai dezarhivat
folderul. Păstreaz-o.)

---

## Fișierele rămân. Conversația, nu.

Două lucruri despre cum funcționează asta, fiindcă schimbă cum lucrezi cu mine.

Tot ce scriu în folder e al tău, e pe calculatorul tău și rămâne acolo și mâine. Dar *conversația*
asta — ce ne-am spus — nu se ține minte între sesiuni. Memoria mea de lucru se numește **context** și
e limitată: cu cât o conversație e mai lungă, cu atât o aglomerez, devin mai lent și costă mai mult.
Poți s-o vezi chiar acum, în **inelul de utilizare** de lângă selectorul de model.

De aceea atelierul are un obicei: **un curs = o conversație nouă.** La finalul fiecărui curs îți spun
să scrii **`/clear`** (același folder) și apoi „cursul N". Nu pierzi nimic — fișierele sunt acolo —
dar eu pornesc cu mintea limpede.

TRAINER: Madalina explică grupei, pe scurt, **tipurile de fișiere** cu care lucrăm — ce e un `.md`
(text simplu, lizibil și de om, și de AI), un `.csv` (tabel, ca un Excel salvat simplu), un `.pdf` —
și de ce în atelier lucrăm mult cu `.md`. Predă-i ștafeta aici și oprește-te.

WAIT: Gata, după ce a explicat Madalina? Ai văzut diferența chat vs. folder?

USER: Da

---

Ține minte un singur lucru din cursul ăsta: **sunt un coleg priceput, nu un oracol.** Fac munca, o
vezi pas cu pas în diferențe, dar tu rămâi cel care verifică și decide. Asta e tema întregului
atelier — și exact ce ne ține departe de problema numărul unu în cercetare: AI-ul produce uneori
lucruri care *sună* perfect și sunt **false**. O citare care nu există. O cifră care nu e în niciun
fișier. Despre asta o să revenim la fiecare curs, iar la Cursul 6 avem un moment dedicat.

Ăsta e **reflexul 1**: lucrezi pe fișierele tale, nu cari context într-un chat. De aici pornește totul.

---

**Ce ai învățat:** Claude Code e un *agent* — lucrează în folderul tău, pe fișiere reale, în mai
mulți pași, și vezi tot în indicatorul de diferențe. Știi unde e selectorul de mod și de ce nu arată
la fel la toată lumea. Fișierele persistă; conversația nu. De aceea: un curs pe conversație proaspătă.

**Ce ai produs:** Nimic încă — doar o hartă a folderului. De la cursul următor, lucrăm.

**Decizia umană:** Tu hotărăști mereu ce e bun și ce se folosește. Eu propun; tu aprobi.

**Urmează:** Îți dau prima sarcină adevărată — cinci politici reale despre folosirea AI în cercetare,
din care scoatem un tabel comparativ cu fiecare rând citat la sursă.

**Ca să continui:** scrie **`/clear`** (același folder) și apoi **„cursul 2"** — o conversație
proaspătă pe curs îmi păstrează contextul curat și costul mic.
