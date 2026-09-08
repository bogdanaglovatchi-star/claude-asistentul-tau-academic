# Cursul 10: Privește-ți critic lucrarea, cu un panel de subagenți *(curs-cheie)*

Întâi, o limită clară, ca să nu fie niciun dubiu: **a face peer review cu AI pentru un jurnal nu e
ok.** Recenzia e o activitate confidențială, iar liniile directoare europene cer explicit să rămână
umană. Manuscrisul altcuiva nu se încarcă într-un instrument AI. Deci nu despre asta e cursul.

Despre ce *e*: cum îți privești **propria** lucrare cu ochi critici **înainte** s-o trimiți. Asta e
perfect legitim și foarte util — e ca și cum ai trece-o prin trei recenzori ostili înainte s-o facă
altcineva, într-un moment când mai poți repara. Și o facem cu un concept nou: **subagenții**.

WAIT: Când îți recitești propria lucrare înainte de submisie, la ce te uiți prima dată — la
contribuție (e nou, e important?), la metodă (designul ține?), sau la claritate (e bine scrisă?)?
*(poți spune „pas")*

USER: [Numește una]

---

## Skill vs. subagent — diferența

Ai văzut deja **proceduri**: o metodă scrisă o dată, pe care o rulez la fel de fiecare dată. O
procedură rulează **în conversația curentă** — împarte memoria cu mine, deci pornește cu tot ce am eu
deja în cap.

Un **subagent** e altceva: un **agent-copil** pe care îl lansez, cu **propriul lui context, proaspăt**,
și cu o **singură sarcină**. Lucrează independent de mine și de ceilalți subagenți, apoi îmi întoarce
rezultatul. De-aia e bun pentru un panel: dacă lansez trei recenzori ca subagenți, fiecare se uită la
lucrare **fără** să fie influențat de ce a observat celălalt — exact ca trei recenzori reali care nu
vorbesc între ei.

Reține diferența: **procedură = metodă (același context), subagent = lucrător nou (context proaspăt).**
Se combină bine — o procedură poate *lansa* subagenți. Asta face și `paper-review`. Dar azi vreau să
mi-i ceri tu, explicit, fiindcă ideea merită înțeleasă direct.

## Lucrarea-țintă

WAIT: Ai adus o lucrare de-a ta? Dacă ai un manuscris, un abstract sau o secțiune la care lucrezi
acum, pune fișierul în `inbox/` și spune-mi. **E lucrarea ta, e în regulă.** Dacă nu ai la îndemână,
lucrăm pe una din corpus și te pui în pielea autorului.

USER: [Fie pune un fișier în `inbox/`, fie alege corpusul]

ACTION (varianta lui): Dacă a pus un fișier în `inbox/`, folosește-l ca țintă. Nu-l trimite nicăieri,
nu-l copia în `outputs/` — rămâne al lui.

ACTION (varianta din corpus): Dacă nu are, caută în `scenarii/literatura/` **meta-analiza despre
exercițiu și somn** (Banno et al., 2018 — numele fișierului e neîngrijit, găsește-o după conținut),
deschide-o și spune că lucrăm pe abstract și pe afirmațiile-cheie de acolo, lucrarea integrală fiind
la link-ul PMC. E o țintă excelentă de criticat: raportează îmbunătățire la măsurile *subiective* ale
somnului, dar **nesemnificativă la cele obiective**, pe dovezi de calitate scăzută/foarte scăzută.
(Imaginează-ți că e propria ta lucrare, gata de trimis.)

## Cere tu subagenții — promptul exact

Scrie-mi tu comanda de mai jos. Asta e ideea pe care vreau s-o iei cu tine din curs:

> **„Generează 3 subagenți care să recenzeze lucrarea din [fișier], fiecare independent, cu o singură
> lentilă: (1) Contribuție & noutate; (2) Metode & statistică; (3) Claritate & raportare. Adaugă un
> al 4-lea subagent, avocatul diavolului, care încearcă activ să respingă lucrarea. Fiecare întoarce
> 3–5 observații ancorate în text, plus un scor parțial. Apoi sintetizează tu, ca editor: un scor
> 0–100, o recomandare (accept / minor / major / reject) și întrebările pentru autori."**

WAIT: Trimite-mi promptul de mai sus.

USER: [Îmi dă promptul]

ACTION: La cererea participantului, **lansează subagenții** (asta face și procedura `paper-review`).
Fiecare lucrează în contextul lui, cu lentila lui; apoi sintetizează ca editor. Scrie
`outputs/review-[tema]-[data].md` cu: pe fiecare recenzor (puncte tari / slabe + scor parțial),
raportul avocatului diavolului, scorul global, recomandarea din setul închis, și întrebările pentru
autori. Spune-i că îi poate vedea lucrând în paralel, în panoul de subagenți din meniul *Views*. Dacă
mediul nu permite subagenți reali, **spune-o** și simulează cele patru perspective secvențial — dar
ține-le **separate și distincte**, fără să amesteci ce a observat una cu ce a observat alta.

Gata. Deschide review-ul.

WAIT: Uită-te la ce a zis fiecare. Au prins lucruri diferite? Și ce a găsit avocatul diavolului?

USER: [Citește — ex., pe Banno: doar 9 studii / 557 participanți; dovezi de calitate scăzută;
măsurile obiective nesemnificative; heterogeneitate; risc de publication bias]

---

Vezi de ce panelul prinde mai mult: recenzorul de metodă observă că **măsurile obiective ale somnului
nu au atins semnificația**, doar cele subiective, pe dovezi de calitate scăzută; avocatul diavolului
întreabă direct „oamenii *se simt* mai odihniți, dar somnul măsurat obiectiv chiar se schimbă?". Un
singur cititor — sau un singur prompt, cu un singur context — ar fi ratat jumătate. **Contextul
proaspăt și independent al fiecărui subagent e tot rostul.**

Și, ca peste tot în atelier, review-ul **nu e o decizie**. E materialul pe care tu, autorul, îl
folosești ca să-ți întărești lucrarea înainte de submisie. Subagenții nu acceptă și nu resping nimic
în locul tău.

WAIT: Din tot ce a ieșit, care critică ai rezolva-o prima?

USER: [Numește una]

---

> **Reține:** același mecanism — mai mulți subagenți cu context proaspăt, fiecare cu altă lentilă,
> apoi o sinteză — merge pe **orice** lucru unde ai nevoie de perspective independente: o cerere de
> grant înainte de depunere (un subagent care citește ca evaluatorul, unul ca economistul proiectului,
> unul ca specialistul de impact), un protocol de studiu, un abstract de conferință, chiar un raport
> de activitate înainte să-l trimiți directorului. Nu e doar pentru lucrări.

WAIT: Pe ce ai pune tu un panel, din ce ai de trimis luna asta? *(poți spune „pas")*

USER: [Numește ceva]

---

**Ce ai învățat:** Ce e un **subagent** (un agent-copil cu **context propriu, proaspăt** și o singură
sarcină) și cum diferă de o **procedură** (metodă care rulează în contextul curent). De ce un panel
independent prinde mai mult decât o singură trecere. Și unde e granița: pe propria lucrare e legitim;
pe a altuia, pentru un jurnal, nu.

**Ce ai produs:** `outputs/review-[tema]-[data].md` — review pe dimensiuni, avocatul diavolului, scor,
recomandare și întrebări pentru autori.

**Decizia umană:** Ce critici accepți și ce repari — autorul ești tu.

**Urmează:** Ieșim din folder. Conectăm Claude la calendar, la inbox și la indexurile de literatură pe
care le folosești deja.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 11"**.
