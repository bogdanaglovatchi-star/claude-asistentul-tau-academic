# Procedurile — harta celor 12 skill-uri

O **procedură** (în aplicație: *skill*) e o fișă de protocol scrisă o singură dată, pe care Claude o
urmează la fel de fiecare dată. Le pornești scriind `/` și numele ei. Câteva conțin și **cod care
chiar rulează** (calcule pe fișierele tale), nu doar instrucțiuni.

Sunt **deja instalate** în folderul cursului, în `.claude/skills/`. Ce faci tu la atelier e să le
**adaptezi** muncii tale reale și, la final, să le **duci acasă**:

- pe **Mac**: le copiezi din `.claude/skills/` în `~/.claude/skills/`
- pe **Windows**: în `%USERPROFILE%\.claude\skills\`

De acolo sunt disponibile în **orice folder** deschizi, nu doar în cel al cursului. (Asta facem la
Cursul 9.) Procedurile sunt un punct de plecare, nu o cușcă: le rescrii pașii, le schimbi formatul de
output, le legi de șabloanele tale.

> ⚠️ **Nu le încărca prin Customize → Skills** din setările contului. Acolo ajung skill-urile pentru
> Cowork și sesiunile din cloud, **nu** pentru tab-ul Code, și le vei căuta degeaba la `/`. Locul
> corect e folderul `.claude/skills/`.

---

## Cercetare

| Procedură | Ce face | Curs |
|-----------|---------|------|
| `sinteza-literatura` | Dintr-un corpus de lucrări → tabel, **teme transversale**, **contradicții**, limite, întrebări deschise. Fiecare afirmație ancorată în sursă; ce nu e în text merge la „de verificat la sursă". | **L4** — rulată live |
| `cautare-literatura` | Caută pe o temă și întoarce un tabel de citări **verificate** într-un index real (PubMed, Europe PMC, Crossref), cu DOI/PMC funcțional. Zero citări fabricate. | L6, L11 |
| `verificare-citari` | Ia o bibliografie sau un text cu citări și verifică fiecare într-un index public. Verdict din set închis: ✅ confirmată / ⚠️ cu erori / ❌ negăsită. | **L6** — rulată live |
| `paper-review` | Un panel de subagenți independenți (contribuție, metode, claritate + avocatul diavolului) îți recenzează lucrarea înainte de submisie, cu scor și întrebări pentru autori. | **L10** — rulată live |
| `outline-prezentare` | Dintr-o lucrare sau o analiză → structura prezentării: mesaj central, titluri-afirmație, bullets, notițe de prezentator, vizual sugerat. | disponibilă |
| `declaratie-ai` | Scrie declarația de utilizare a IA în forma cerută de destinatar (jurnal, finanțator), pe baza a ce s-a folosit efectiv, cu politica citată. | L2, L8 |

## Date

| Procedură | Ce face | Curs |
|-----------|---------|------|
| `profilare-date` | Profilează un tabel de date: rânduri, coloane, tipuri, valori lipsă, duplicate, comparație pe grupuri (n, medie, mediană, min, max) + grafic HTML interactiv. **Are cod:** `scripts/profil_tabel.sh`. | **L5** — rulată live |
| `executie-bugetara` | Planificat vs. cheltuit pe categorii și total, procent de execuție, abaterile de justificat, și confruntarea unei cifre scrise „din memorie" cu cea calculată. **Are cod:** `scripts/executie_buget.sh`. | **L8** — rulată live |

## Administrare de proiect

| Procedură | Ce face | Curs |
|-----------|---------|------|
| `raport-activitate` | Raportul de activitate pe perioada de raportare, din folderul de proiect + bugetul calculat, exact pe `templates/raport-activitate.md`. Lasă deschis ce nu e confirmat. | **L8** — rulată live |
| `referat-necesitate` | Referatul cu care începe o achiziție: nevoia legată de un obiectiv real, valoarea luată din linia de buget, ce lipsește pentru semnare. | **L9** — construită de tine |
| `caiet-de-sarcini` | Cerințe obligatorii vs. opționale, fiecare cu **metoda ei de verificare**, criterii de acceptanță și grila de evaluare a ofertelor. | L9, disponibilă |
| `pontaj-lunar` | Ore pe persoană și activitate, cu **statutul fiecărei cifre** (confirmat vs. aproximativ) și lista de confirmări cerute înainte de depunere. | L7, disponibilă |

---

## Ce le ține pe toate laolaltă

Fiecare procedură din folderul acesta respectă aceleași patru reguli. Când îți scrii una a ta,
copiază-le:

1. **Nu inventează.** Nicio cifră, citare, clauză, valoare sau identificator care nu vine dintr-un
   fișier sau dintr-un calcul. Ce lipsește se marchează „de verificat", nu se completează plauzibil.
2. **Spune când n-a mers.** Dacă scriptul nu a rulat sau API-ul nu a răspuns, asta se scrie în
   rezultat. Un rezultat inventat e mai rău decât un rezultat lipsă.
3. **Arată sursa lângă afirmație.** Nu la sfârșit, într-o bibliografie generală — lângă rândul care
   o folosește.
4. **Se oprește înainte de decizie.** Fiecare procedură se termină cu ce trebuie confirmat, semnat
   sau aprobat de un om. Butonul final e al tău.
