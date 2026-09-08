# Cursul 8: Raportul de activitate — cifre din sursă, nu din memorie

Ai folderul organizat. Acum scriem lucrul pentru care există folderul: **raportul de activitate pe
semestrul I**, cel care se depune la UEFISCDI pe 15 iulie și de care depinde tranșa următoare.

Și începem cu partea care decide totul: **execuția bugetară.** Ciorna moștenită are deja niște cifre
acolo. Le verificăm înainte să atingem raportul.

> Notă: dacă fișierele din `scenarii/proiect-haos/` au fost redenumite la cursul trecut, găsește-le
> **după conținut**, nu după nume.

WAIT: Din experiența ta — cât de des ajunge o cifră într-un raport pentru că „așa era și anul trecut"
sau „mi-a zis cineva pe telefon"? *(poți spune „pas")*

USER: [Răspunde]

---

## Partea A — ce zice ciorna

ACTION: Deschide ciorna de raport moștenită (fișierul nefinalizat, cel cu „nu am apucat să termin")
și citește secțiunea de execuție bugetară exact cum e scrisă. Reține două afirmații:
**„am cheltuit 461.000 lei din 450.000, adică o execuție de cca 102%"** și **„categoria deplasări a
fost în limita planificată"**. Spune că autorul însuși a notat, dedesubt, că a scris cifrele din cap
și că trebuie verificate.

WAIT: Dacă ai fi grăbit, ce ai face cu cifrele astea? *(poți spune „pas")*

USER: [Recunoaște că le-ar fi preluat / verificat]

---

## Partea B — cifra calculată

Acum le calculăm din sursă. Fișierul de buget e `scenarii/date/buget-proiect.csv`: pentru fiecare lună
și categorie, cât s-a **planificat** și cât s-a **cheltuit**.

WAIT: Cheamă-mi tu fișierul cu `@` (scrie `@buget-proiect`) și cere-mi execuția pe categorii. *(e
mențiunea de la Cursul 5 — un mic test de memorie)*

USER: [Scrie `@buget-proiect.csv` și cere execuția]

ACTION: Arată pe scurt `.claude/skills/executie-bugetara/SKILL.md`, apoi rulează partea ei de cod:
```
bash .claude/skills/executie-bugetara/scripts/executie_buget.sh \
     scenarii/date/buget-proiect.csv outputs/executie-buget-[data].html \
     --din-memorie 461000
```
Arată ieșirea reală a scriptului, nu o rescrie din memorie. Apoi scrie tabelul în
`outputs/executie-buget-[data].md`. Dacă scriptul nu rulează pe calculatorul participantului,
**spune-o deschis** și fă calculul citind CSV-ul — dar nu pretinde că ai rulat ceva ce n-ai rulat.

WAIT: Uită-te la tabel. Cât s-a cheltuit, de fapt? Și ce categorie sare în ochi?

USER: [Vede: total 436.000 din 450.000 = 96,9%; **Deplasări 37.000 din 30.000 = 123,3%**; Diseminare
27.000 din 36.000 = 75%]

---

Hai să punem cele două față în față, fiindcă ăsta e momentul cursului:

| | Ciorna, „din memorie" | Calculat din fișier |
|---|---|---|
| Cheltuit total | 461.000 lei | **436.000 lei** |
| Execuție | „cca 102%" | **96,9%** |
| Deplasări | „în limita planificată" | **123,3% — depășire de 7.000 lei** |

Prima cifră e greșită cu **25.000 de lei**. A doua afirmație e greșită **în direcția opusă realității**
— exact linia despre care directorul scrisese, în e-mail, „atenție mare, anul trecut au sărit pe noi
pe deplasări". Și mai apare una pe care nimeni nu o pomenise: **Diseminarea e la 75%**, adică 9.000
de lei necheltuiți, ceea ce se explică la fel de serios ca o depășire.

Ăsta e **reflexul 4**, în forma lui cea mai simplă: **cifra calculată bate cifra din memorie.** Nu
pentru că omul care a scris ciorna era neglijent — își notase singur că trebuie verificat — ci pentru
că nimeni nu ține minte corect șase categorii pe șase luni.

ACTION: Deschide graficul HTML generat, în panoul Browser. Arată barele planificat vs. cheltuit și
faptul că depășirea de la deplasări se vede dintr-o privire. Spune-i că e un fișier de sine stătător,
pe care îl poate trimite directorului ca atașament.

WAIT: Asta e ce vede directorul în două secunde. Ai vrea să afle de la tine sau de la finanțator?

USER: [Reacționează]

---

## Partea C — raportul

Acum avem tot: faptele din folder (Cursul 7) și cifrele calculate. Le punem în formatul cerut.

ACTION: Deschide `templates/raport-activitate.md` și arată structura impusă: rezumat, tabelul
obiectivelor, livrabile, execuția bugetară, abateri, pași următori, declarația IA, „De verificat
înainte de depunere". Spune clar: „ăsta e formatul tău — procedura îl completează, nu-l reinventează."

ACTION: Rulează procedura `raport-activitate`. Construiește raportul din `scenarii/proiect-haos/` +
cifrele calculate, urmând **exact** formatul din șablon:
- **obiectivele** din minută și din poza tablei (etică ✔, recrutare 47 din ținta de 60, kit ELISA
  achiziționat în februarie, diseminare);
- **execuția bugetară** cu cifrele calculate (total 436.000 din 450.000 ≈ 96,9%; Deplasări 123,3%;
  Diseminare 75%), plus **justificarea abaterilor** — deplasările, din taxele și cazarea de la
  congres, mai scumpe decât bugetat; diseminarea, din articolul încă în evaluare;
- **diseminare:** „1 articol trimis (în evaluare) + 1 poster la congres";
- la **„De verificat înainte de depunere"**: recrutați (47) vs. activi (44, după 3 retrageri) — ce
  cifră se raportează e decizia echipei; orele aproximative din pontaj; și **declarația privind
  utilizarea IA**, pe care o cere explicit e-mailul de la finanțator.
Scrie rezultatul în `outputs/raport-activitate-sem1-[data].md`.

Gata. Deschide raportul.

WAIT: Are fiecare cifră o sursă? Și ai văzut că n-am „rezolvat" pe tăcute problema recrutării?

USER: [Citește]

---

Uită-te la ultima secțiune. Un raport bun nu e cel care pare complet — e cel care îți spune **exact ce
mai trebuie confirmat înainte să apeși trimite**. Trei rânduri acolo îți salvează o discuție cu
finanțatorul.

> Și declarația IA: e cerută în e-mailul de la ofițerul de monitorizare, iar politicile pe care le-am
> citit marți spun același lucru — folosirea se declară, răspunderea rămâne a echipei. Dacă vrei, pot
> rula `declaratie-ai` și îți scriu textul, pe formatul cerut de finanțator.

WAIT: Vrei să scriu și declarația? *(poți spune „pas")*

USER: [Răspunde]

---

**Ce ai învățat:** Cum calculezi execuția bugetară din sursă, cu cod care se poate rerula, și de ce
cifra din ciornă nu se preia niciodată. Cum se completează un raport pe formatul finanțatorului, cu
fiecare cifră ancorată, cu abaterile justificate și cu neconfirmatele lăsate deschise.

**Ce ai produs:** `outputs/executie-buget-[data].md`, graficul HTML, și
`outputs/raport-activitate-sem1-[data].md` — un draft de raport cu cifre verificabile.

**Decizia umană:** Ce cifră de recrutare raportezi, cum formulezi justificarea abaterilor, ce declari
— și aprobarea directorului.

**Urmează:** Ai văzut trei proceduri la lucru. Acum înveți ce sunt, de unde le iei, și cum îți scrii
una a ta — pe care o duci acasă.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 9"**.
