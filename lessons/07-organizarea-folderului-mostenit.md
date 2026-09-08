# Cursul 7: Organizarea unui folder de proiect moștenit

ACTION: E a doua seară. Înainte de orice, **recapitulează în trei propoziții** ce s-a construit marți:
fișierele din `outputs/` (sinteza politicilor, sinteza de literatură, profilul de date, stadiul
cunoașterii), `CLAUDE.md`-ul pe care l-a scris pentru munca lui, și obiceiul de a ancora fiecare
afirmație în sursă. Apoi spune că seara asta trece de cealaltă parte a aceluiași proiect: **hârtiile**.

---

Marți am lucrat literatură și date. Seara asta lucrăm partea care mănâncă, de fapt, orele: **birocrația
de proiect.** Și începem cu situația pe care o cunoaște oricine a lucrat pe un grant.

În `scenarii/proiect-haos/` ai moștenit folderul colegului care se ocupa de administrația proiectului
**CARDIO-BIO** și **a plecat brusc**. Peste trei săptămâni trebuie depus **raportul de activitate pe
semestrul I** la UEFISCDI. Folderul arată ca un desktop real.

ACTION: Listează `scenarii/proiect-haos/` și arată-i numele fișierelor (`Document (3).md`,
`scan_0017.md`, `Fwd Fwd RE proiect.md`, `notite telefon.md`, `pontaj mai.md`, `IMG_2284.png`,
`Copy of Copy of raport ciorna.md`). Spune sincer: din nume nu-ți dai seama ce e fiecare. Și remarcă
faptul că unul nu e nici măcar text — e o **poză**, o fotografie cu tabla din sala de ședințe.

WAIT: Recunoști situația? Un folder cu „Document (3)", „scan_0017", „Copy of Copy of…"? *(poți spune „pas")*

USER: [Confirmă / râde]

---

## Partea A — fă-ți o hartă: ce e, de fapt, în folder

Aici un agent strălucește: **numele fișierului e inutil, dar conținutul spune exact ce e.** Pot
deschide fiecare fișier, citi ce e înăuntru și face un cuprins, ca să nu mai lucrezi pe ghicite. Dar
pornesc doar dacă mi-o ceri, așa că hai s-o ceri tu.

WAIT: Cere-mi tu să deschid fișierele și să-ți fac un cuprins. *(scrie ceva de genul „deschide
fișierele din proiect-haos și fă-mi un cuprins cu ce e fiecare")*

USER: [Îmi cere cuprinsul]

ACTION: Deschide pe rând fișierele din `scenarii/proiect-haos/`, identifică pentru fiecare ce **tip**
de document e (minută, lanț de e-mailuri, notițe de telefon, ciornă de pontaj, draft de raport) și ce
conține pe scurt. **`IMG_2284.png` e o imagine — citește-o ca imagine**, nu ca text: e poza tablei
din sala de ședințe; extrage ce scrie pe ea. Scrie un cuprins în `outputs/cuprins-proiect-[data].md`:
un tabel cu *Nume fișier · Ce este · Despre ce · Conține o acțiune sau un termen?*. Observă cu voce
tare două lucruri: că pot **citi și o poză**, nu doar text; și că toate fișierele sunt despre
**același lucru** — raportarea semestrului I.

Gata. Deschide cuprinsul.

WAIT: Acum vezi ce e fiecare „scan_0017" sau „IMG_2284"? Ai observat că am citit și **poza** cu tabla?

USER: [Vede: minute, lanț de e-mailuri, pontaj, poza tablei, un draft nefinalizat — toate despre raport]

---

Asta e prima superputere: ai transformat un folder haotic într-o hartă, în câteva secunde. Imaginează-ți
folderul tău real, cu zeci de fișiere moștenite de la cine a fost înaintea ta. Dar harta nu e încă
munca — e doar startul.

## Partea B — scoate acțiunile, termenele și deciziile

Informația de care ai nevoie pentru raport e împrăștiată: o decizie e într-o minută, un termen
într-un e-mail, o cifră într-o notiță de telefon.

ACTION: Citește din nou fișierele și scrie `outputs/actiuni-si-decizii.md` cu: (1) **termenele**
(cine, ce, până când — raportul la UEFISCDI pe 15 iulie, ora 16:00; varianta pentru director înainte
de 10 iulie; lista de consumabile de la Radu, vineri); (2) **deciziile** consemnate în minută;
(3) **acțiunile pe persoană**; (4) **faptele pentru raport** strânse din folder (obiective și stadiu,
recrutare, achiziții, diseminare). Citează pentru fiecare fișierul din care provine.

Gata. Deschide-l.

WAIT: E ceva ce ai fi ratat dacă citeai fișierele pe fugă, unul câte unul?

USER: [Vede lista — termenul de 15 iulie, decontul, scanul de etică, cerința de declarație IA din e-mail]

---

## Partea C — semnalează ce nu se potrivește (nu „repara" încă)

Un agent bun nu doar adună — observă și **contradicțiile**. Aici sunt câteva, exact ca în realitate.

ACTION: Adaugă la finalul fișierului o secțiune **„De clarificat / de verificat"** cu neconcordanțele:
(1) **recrutare** — notițele spun „47 recrutați", dar și „3 retrași", deci numărul *activ* (44) diferă
de cel *recrutat*; ce cifră intră în raport e o decizie a echipei, nu a ta; (2) **draftul moștenit**
(`Copy of Copy of raport ciorna.md`) conține cifre de buget pe care autorul lui însuși le-a marcat
„scrise din memorie" — **nu le prelua**; le calculăm din sursă la cursul următor; (3) **deplasările**
— un e-mail și o notiță semnalează amândouă o posibilă depășire, în timp ce ciorna spune că totul e
„în limita planificată"; două afirmații care nu pot fi amândouă adevărate; (4) **pontajul** —
o persoană are ore trecute „cca", aproximativ, iar orele de congres nu se știe dacă intră ca ore de
proiect. **Nu rezolva nimic acum** — doar marchează.

WAIT: Vezi de ce contează să le ții separate, în loc să le netezești? Care dintre ele te-ar fi păcălit?

USER: [Reflectează — ex. ar fi copiat cifra din ciornă]

---

## Partea D — pune ordine în nume

Ultimul pas, cel care se vede: fișierele rămân cu nume imposibile. Le redenumim descriptiv, ca peste
trei luni să știi ce e fiecare fără să-l deschizi.

ACTION: Dacă participantul e pe modul **Manual**, sugerează-i acum să treacă pe **Accept edits** —
altfel îl întrerupi de opt ori la rând. Apoi redenumește fișierele din `scenarii/proiect-haos/` cu
nume descriptive, cu dată în față unde se poate (ex. `2026-06-minuta-consortiu.md`,
`2026-06-email-uefiscdi-raportare.md`, `2026-05-pontaj-ciorna.md`,
`2026-06-raport-ciorna-nefinalizat.md`, `2026-06-foto-tabla-obiective.png`). Arată-i lista înainte și
după, și spune-i clar că e singura operație din atelier pe care **`/rewind` nu o dă înapoi** — dacă
vrea starea inițială, dezarhivează din nou.

WAIT: Uită-te în folder acum. Diferența e vizibilă?

USER: [Vede]

---

Două lucruri de reținut, fiindcă sunt toată ideea acestei seri:

1. **Ai pornit de la haos și ai ieșit cu structură** — un cuprins, acțiuni, termene, contradicții
   marcate. Asta nu e „organizare de fișiere"; e materia primă a raportului pe care îl scriem imediat.
2. **N-am prefăcut o cifră neverificată în fapt.** Draftul moștenit *suna* a raport aproape gata, dar
   cifrele lui erau scrise din memorie. Le-am ținut la „de verificat". **Cifrele reale le calculăm la
   cursul următor** — și o să vezi cât de departe erau.

> Notă de confidențialitate: folderul ăsta e sintetic. În realitate, un folder de proiect medical
> poate conține date de pacienți sau rezultate nepublicate. Gândește-te ce e în el înainte să pui un
> agent să-l citească, și ce cont conectezi.

---

**Ce ai învățat:** Cum transformi un folder moștenit, cu nume inutile, în structură folosibilă —
citind **conținutul**: cuprins, acțiuni, termene, contradicții semnalate, fișiere redenumite. Și că
pot citi și o fotografie.

**Ce ai produs:** `outputs/cuprins-proiect-[data].md`, `outputs/actiuni-si-decizii.md` și un folder
cu nume care se înțeleg.

**Decizia umană:** Ce cifră de recrutare intră în raport, ce abateri trebuie justificate.

**Urmează:** Raportul propriu-zis — și cifrele de buget, calculate din sursă. Aici se vede cât de
greșită era ciorna.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 8"**.
