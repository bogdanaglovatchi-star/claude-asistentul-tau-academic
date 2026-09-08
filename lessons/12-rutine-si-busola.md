# Cursul 12: Rutine, planul tău și busola de decizie *(ULTIMA)*

Am ajuns la ultimul curs. Mai avem un lucru de văzut — cel mai „hands-off" dintre toate — apoi
strângem tot ce am făcut într-o hartă cu care pleci acasă.

## Partea A — o sarcină care rulează singură

Până acum, de fiecare dată **tu** ai pornit sarcina. Ultimul pas tehnic e o sarcină care rulează **pe
un program**, fără tine în cameră. În Claude Code se numește o **rutină**.

Ideea e simplă: unele lucruri se repetă la fix. Vrei, în fiecare dimineață, ce ai azi și ce termene se
apropie. Sau, în fiecare luni, ce e nou pe o temă. În loc să ceri tu de fiecare dată, **definești
sarcina o dată** și o pui să ruleze pe un orar.

WAIT: Ai un lucru pe care l-ai vrea gata în fiecare dimineață, fără să-l ceri? *(poți spune „pas")*

USER: [Numește unul — ex. „ce am azi", „ce termene vin săptămâna asta", „ce e nou pe tema mea"]

TRAINER: Madalina demonstrează **cum se face o rutină**: în bara laterală, **Routines → New routine →
Local**, apoi nume, descriere, instrucțiuni, folderul pe care lucrează și programul (Manual, Hourly,
Daily, Weekdays, Weekly). Exemplul cel mai convingător pentru grupă e rezumatul de dimineață — ce am
azi în calendar, ce termene se apropie, lăsat ca fișier în `outputs/`. Și, dacă vrea ceva spectaculos:
rutina se poate crea **vorbind** — „fă-mi o rutină zilnică la 8 care îmi lasă agenda zilei în
outputs" — și o construiește singură.

Trei capcane de spus grupei, toate reale:
- rutina locală rulează **doar cu aplicația pornită și laptopul treaz**; dacă a dormit, se sare peste;
- dacă folderul e pe **Manual**, rutina se blochează la prima cerere de permisiune — se apasă
  **Run now** o dată, imediat după creare, și se aprobă;
- folderul trebuie să fie unul în care ai avut deja încredere.

Predă-i ștafeta aici.

WAIT: Gata, după ce Madalina a arătat rutina?

USER: Da

---

Atât de simplu e: o sarcină pe care ai cere-o oricum, dar legată de un ceas. O rutină bună e una pe
care ai făcut-o deja manual o dată sau de două ori și ai văzut că merge — abia apoi o automatizezi.

Și aici, **linia roșie**, aceeași ca la conectori: o rutină **adună** și **schițează**. Un rezumat
dimineața: da. O scanare care îți lasă o listă de termene: da. Un draft de răspuns pregătit: da. Dar
**a trimite**, **a depune**, **a publica** rămân un pas pe care îl apeși **tu**. Cu cât o sarcină
rulează mai singură, cu atât mai important e ca pasul exterior să rămână uman.

---

## Partea B — planul tău de luni

ACTION: Cere-i participantului să aleagă **un singur lucru** din tot atelierul pe care îl duce primul
în munca lui reală, și scrie împreună cu el `outputs/planul-meu.md`: ce sarcină, pe ce fișiere, cu ce
procedură, și care e primul pas concret (ex. „luni dimineață deschid folderul proiectului X în tab-ul
Code și îi scriu un `CLAUDE.md`"). Ține-l scurt și foarte concret — un plan care încape în 20 de minute.

WAIT: Care e acel un lucru?

USER: [Numește ceva]

TRAINER: Madalina trece prin planuri — pe cât apucă, cu voce tare — și spune la fiecare cum se poate
optimiza sau unde ar începe ea. Ăsta e momentul în care fiecare pleacă cu ceva al lui, nu cu o
impresie generală. Predă-i ștafeta aici și **oprește-te**; nu comenta tu planurile în locul ei.

WAIT: Gata, după ce a trecut Madalina prin planuri?

USER: Da

---

## Partea C — cele cinci reflexe

Hai să recapitulăm. Tot atelierul a construit cinci reflexe, în ordinea asta:

1. **Lucrezi pe fișierele tale, nu pe copy-paste.** (Cursurile 1–2)
2. **Delegi un rezultat delimitat, nu o întrebare.** (Cursul 2 — tabelul de politici, nu „rezumă-mi")
3. **Fiecare afirmație are o sursă; ce nu are, se marchează.** (Cursurile 2, 4, 6 — și momentul în
   care ți-am spus „nu am lucrarea asta" în loc să inventez un DOI)
4. **Cifra calculată bate cifra din memorie.** (Cursurile 5, 7, 8 — 461.000 „din memorie" față de
   436.000 calculați, și deplasările la 123%, nu „în limita planificată")
5. **Îl înveți o dată felul tău de a lucra.** (Cursurile 3, 9, 11, 12 — `CLAUDE.md`, procedura ta,
   instrumentele conectate, rutina)

## Partea D — busola

Și acum harta, ca să știi ce folosești și când. E și în `reference/busola-decizie.md`, ca s-o ai după
atelier.

| Folosești… | Când | Exemplu din atelier |
|------------|------|---------------------|
| **Chat simplu** | o întrebare rapidă, o reformulare | „explică-mi ce e un confuzor" |
| **Agent** (Claude Code) | o sarcină pe fișierele tale, în mai mulți pași, cu rezultat | folderul moștenit; raportul; analiza de date |
| **Procedură** (skill) | ceva ce repeți identic | `sinteza-literatura`, `executie-bugetara`, referatul tău |
| **Subagenți / panel** | vrei perspective independente, cu context proaspăt | review-ul pe propria lucrare |
| **Instrument conectat / API** | ai nevoie de ceva din afara folderului | Calendar; PubMed; Crossref |
| **Rutină** | sarcină recurentă, fără tine în buclă | rezumatul de dimineață |

**Regula simplă:** cu cât sarcina e mai repetitivă și mai bine definită, cu atât cobori mai jos în
tabel. O întrebare unică → chat. Ceva ce faci în fiecare semestru, identic → o procedură, poate o
rutină.

Și cele **trei întrebări**, înainte de orice delegare:

1. **Merită delegat?** Dacă explicarea durează mai mult decât făcutul, fă-o tu.
2. **Câtă încredere are rezultatul?** Dacă nu poți urmări afirmația până la o sursă, nu e un rezultat,
   e o propunere.
3. **Cine apasă butonul final?** Tu. Mereu.

WAIT: Ia o sarcină reală din săptămâna ta. Care rând din tabel i se potrivește? *(poți spune „pas")*

USER: [Mapează o sarcină proprie]

---

## Firul roșu, în șase rânduri

Același, pentru cercetare și pentru administrare:

1. **AI = instrument, nu sursă de adevăr.** Se verifică în sursa primară.
2. **Nu se inventează** surse, citări, autori, cifre, DOI-uri. Ce nu e confirmat se marchează.
3. **AI nu poate fi autor** — nicio politică majoră nu acceptă asta.
4. **Transparență:** folosirea se declară unde se cere.
5. **Confidențialitate:** date de pacienți, rezultate nepublicate și manuscrise ale altcuiva nu se expun.
6. **Răspunderea e integral umană.** Eu produc drafturi auditabile; decizia și semnătura sunt ale tale.

---

Asta a fost ideea atelierului: nu „AI-ul face treaba în locul tău", ci **tu, cu un coleg priceput
lângă tine, te descurci cu aproape orice** — pe fișierele tale reale, cu pași pe care îi vezi și cifre
pe care le poți reface. De la un teanc de lucrări la un text citabil. De la un folder moștenit haotic
la un raport cu cifre verificabile. Metodologia, judecata și răspunderea au rămas tot timpul ale tale.

**Ce ai făcut în două seri:** ai văzut ce face un agent diferit · ai delegat primul rezultat (politici
AI) · ți-ai scris un `CLAUDE.md` · ai sintetizat un corpus de literatură · ai rulat cod pe date reale ·
ai scris text citabil și ai verificat citările într-un index · ai organizat un folder moștenit · ai
calculat execuția bugetară și ai scris raportul · ți-ai făcut o procedură proprie și ai dus-o acasă ·
ți-ai recenzat lucrarea cu un panel de subagenți · ai conectat un instrument și ai atins un API de
literatură · ai văzut o rutină.

**Mai departe:** redeschide folderul oricând, într-o conversație nouă, și reia orice curs cu „cursul X".
Sau — mai bine — deschide un folder de-al tău, scrie-i un `CLAUDE.md` și pune-mă la treabă pe munca ta
adevărată.

Ne vedem pe **17 septembrie, la Q&A**, cu ce nu ți-a ieșit între timp. Vino cu un caz concret, e cel
mai util lucru pe care îl poți aduce.

Mulțumesc că ai lucrat cu mine. 🩺
