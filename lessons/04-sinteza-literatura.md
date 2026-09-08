# Cursul 4: Sinteză de literatură

Rar citești o singură lucrare izolat. De obicei ai un **teanc** pe o temă, și partea grea nu e să
citești una, ci să vezi **tabloul întreg**: ce spun toate la fel, **unde se contrazic**, ce le
limitează și ce întrebări rămân deschise. Asta e o sinteză de literatură, și e exact genul de muncă pe
care o delegi (cu verificare), fiindcă e migăloasă și sistematică. Cel mai util lucru care iese nu e
consensul; sunt **contradicțiile și golurile**.

WAIT: Când aduni lucrări pe o temă, ce te interesează mai tare — ce spun toate la fel, sau unde nu se
potrivesc între ele? *(poți spune „pas")*

USER: [Răspunde]

---

În `scenarii/literatura/` ai **5 lucrări reale, open-access** (cu DOI și link PMC), legate de un fir
comun: **factori de stil de viață și somnul** — cafea, exercițiu, ecrane, alcool. Am ales tema
dinadins: e destul de aproape de medicină ca să fie serioasă, și destul de comună ca s-o poată citi
oricine din grupă, indiferent de domeniu.

Numele fișierelor sunt neîngrijite (`download (2).md`, `scan_0042.md`, `nihms-987654.md`…), exact ca
într-un folder real de articole descărcate. Așa că nu mă bazez pe nume — **deschid și citesc** ca să
știu ce e fiecare.

ACTION: Arată pe scurt `.claude/skills/sinteza-literatura/SKILL.md`: inventariază corpusul (identifică
fiecare lucrare după conținut) → extrage per lucrare **doar din sursă** (tip de studiu, eșantion,
rezultat cu cifră, calitatea dovezilor) → **teme transversale** → **contradicții & tensiuni** →
**limite** → **întrebări deschise** → „De verificat la sursă". Spune că **nu inventează** un rezultat
pe care o lucrare nu l-a raportat și că fiecare afirmație are nevoie de o ancoră reală
(`neverificat ≠ fals`).

WAIT: Clar ca procedură — citește tot corpusul, extrage doar ce e în sursă, apoi caută temele și
contradicțiile?

USER: Da

---

ACTION: Rulează procedura `sinteza-literatura` pe `scenarii/literatura/` (scrie `/sinteza-literatura`
sau pornește-o direct). Identifică cele 5 lucrări **după conținut**: Banno 2018 (exercițiu & somn,
meta-analiză), Marcus 2023 (cafea, trialul CRAVE), Quiquempoix 2023 (cafeină & atenție în privare de
somn), Brosnan 2024 (ecrane la culcare, adolescenți), Park 2015 (alcool & somn). Extrage per lucrare
tipul de studiu, eșantionul, rezultatul principal cu cifră și calitatea dovezilor, acolo unde e
raportată. Apoi scrie `outputs/sinteza-literatura-somn-[data].md` cu: tabelul corpusului, temele
transversale, **contradicțiile & tensiunile**, limitele și întrebările deschise. Fiecare cifră
ancorată în sursă; ce nu e în text → „De verificat la sursă".

Gata. Deschide sinteza.

WAIT: Uită-te pe secțiunea de **contradicții**. Vezi tensiunea dintre măsurile *subiective* și cele
*obiective* ale somnului?

USER: [Citește — Banno: exercițiul îmbunătățește somnul *resimțit* (PSQI/ISI) dar **nu** măsurile
obiective, pe dovezi de calitate scăzută; alte studii raportează efecte obiective semnificative]

---

Asta e superputerea sintezei: nu rezumatul a cinci lucrări una după alta, ci **tabloul** lor pus cap
la cap. Trei fire pe care le scoate la suprafață, toate din surse reale:

1. **Subiectiv vs. obiectiv.** La Banno, exercițiul ajută somnul *resimțit* (PSQI, ISI), dar
   **măsurile obiective** — eficiența somnului, latența adormirii, durata totală — **nu ating
   semnificația**, și asta pe dovezi de calitate *scăzută/foarte scăzută*. Un studiu care raportează
   „oamenii se simt mai bine" spune altceva decât unul cu somn măsurat obiectiv.
2. **Moderatori individuali peste tot.** Efectul depinde de cine ești: **consumul obișnuit** de
   cafeină (Quiquempoix), **viteza de metabolizare** (Marcus: metabolizatorii lenți dorm cu ~60 min
   mai puțin), **sexul** (Park: corelații la bărbați, nu la femei), **momentul** (Brosnan: ecranul
   *după* ce te bagi în pat strică somnul, *înainte* aproape deloc).
3. **Calitatea dovezilor diferă enorm.** O meta-analiză pe dovezi de calitate scăzută, un trial
   randomizat case-crossover și un studiu observațional nu cântăresc la fel. Sinteza le pune alături,
   dar **spune** care e care.

WAIT: Care contradicție te-ar opri să dai mai departe un titlu de genul „exercițiul îți repară
somnul" sau „cafeaua îți distruge somnul"? *(poți spune „pas")*

USER: [Numește una — ex. subiectiv ≠ obiectiv; depinde de metabolism, sex, moment]

---

Și aici, aceeași disciplină ca peste tot: procedura **n-a inventat** un rezultat pe care o lucrare
nu l-a raportat. Unde textul nu susținea o cifră, a mers la „De verificat la sursă" — fiindcă
**abstractul nu e lucrarea integrală**. O sinteză care „netezește" cinci studii într-o concluzie
curată e mai periculoasă decât utilă; una bună îți arată exact unde **nu** se potrivesc.

> Notă: lucrarea integrală e la link-ul PMC din antetul fiecărui fișier. O cifră din abstract e un
> punct de plecare, **nu** o citare gata de pus într-un manuscris. Pentru asta o confrunți cu textul
> integral — iar la Cursul 6 vedem cum verifici că lucrarea și datele ei chiar există așa cum crezi.

WAIT: Vrei să rulez aceeași procedură pe un corpus de-al tău? Dacă ai câteva PDF-uri pe o temă, le
poți pune în `inbox/` și le luăm la Cursul 6 sau la Q&A. *(poți spune „pas")*

USER: [Răspunde]

---

**Ce ai învățat:** Cum transformi un corpus de lucrări într-o sinteză folosibilă — tabel, **teme
transversale**, **contradicții**, limite și întrebări deschise — fiecare ancorată în sursă, fără
rezultate inventate. Și de ce contradicțiile și golurile sunt partea cea mai utilă.

**Ce ai produs:** `outputs/sinteza-literatura-somn-[data].md` — harta corpusului: ce se știe, unde
studiile nu sunt de acord, ce rămâne de aflat. (Pe corpusul ăsta revenim la Cursul 6, când scriem
text citabil, și la Cursul 10, când recenzăm adânc o singură lucrare.)

**Decizia umană:** Ce afirmație folosești, ce trebuie citit integral înainte de a cita, și ce
contradicție merită urmărită în propria ta cercetare.

**Urmează:** Trecem la date — rulez cod real pe un set clinic public și scoatem un grafic.

**Ca să continui:** scrie **`/clear`** și apoi **„cursul 5"**.
