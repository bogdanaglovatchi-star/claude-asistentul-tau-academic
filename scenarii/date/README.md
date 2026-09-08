# Date — set public de boli cardiace (UCI Heart Disease, Cleveland)

`boli-cardiace.csv` — **303 pacienți**, date **anonime și publice** (UCI Machine Learning Repository, baza
Cleveland; CC BY 4.0). Coloanele au fost redenumite în română și valorile decodate, ca să fie ușor de citit
de un medic. Îl folosim la **Cursul 5** (analiză de date & vizualizare).

> Sursă originală: https://archive.ics.uci.edu/dataset/45/heart+disease

## Dicționar de coloane

| Coloană | Ce înseamnă | Valori |
|---------|-------------|--------|
| `varsta` | vârsta pacientului (ani) | număr (29–77) |
| `sex` | sex | `M` / `F` |
| `tip_durere_piept` | tipul durerii toracice | `angina tipica`, `angina atipica`, `durere non-anginoasa`, `asimptomatic` |
| `tensiune_repaus_mmHg` | tensiunea arterială în repaus (mmHg) | număr |
| `colesterol_mgdl` | colesterol seric (mg/dl) | număr |
| `glicemie_jeun_peste_120` | glicemia à jeun > 120 mg/dl? | `da` / `nu` |
| `puls_maxim` | pulsul maxim atins la efort | număr |
| `angina_la_efort` | a apărut angină la efort? | `da` / `nu` |
| `boala_cardiaca` | **diagnostic: prezența bolii cardiace** | `da` / `nu` |

## Povestea (ce poate găsi un începător)
- Echilibru bun: **139 `da` / 164 `nu`** — se pot compara cele două grupuri.
- Întrebări intuitive: *Au pacienții cu boală un puls maxim mai mic? Colesterolul/vârsta diferă între grupuri?
  Apare angina la efort mai des la cei cu boală?* — toate se pot verifica cu un grafic simplu.

> ⚠️ E un set didactic, vechi (anii '80). Corelațiile sunt bune pentru a învăța vizualizarea, **nu** pentru
> concluzii clinice. Exact genul de avertisment pe care îl predă atelierul.

---

# Date — bugetul proiectului CARDIO-BIO (sintetic)

`buget-proiect.csv` — **36 de rânduri**: pentru fiecare lună din semestrul I 2026 și fiecare categorie
de cheltuială, cât s-a **planificat** și cât s-a **cheltuit**. Îl folosim la **Cursul 8** (raportul de
activitate și execuția bugetară).

| Coloană | Ce înseamnă |
|---|---|
| `luna` | luna de raportare, format `2026-01` … `2026-06` |
| `categorie` | linia bugetară: Personal, Echipamente, Consumabile, Deplasari, Diseminare, Regie |
| `planificat_lei` | cât era prevăzut pe luna și categoria respectivă |
| `cheltuit_lei` | cât s-a cheltuit efectiv |

> ⚠️ **Datele sunt sintetice**, construite pentru exercițiu. Proiectul CARDIO-BIO, persoanele și
> sumele sunt fictive. Ce **nu** e fictiv e tiparul: o categorie depășită, una subexecutată, și un
> total care nu se potrivește cu ce scrisese cineva din memorie într-o ciornă. Exact de asta se
> calculează, nu se preia.

Procedura `executie-bugetara` (cu partea ei de cod, `scripts/executie_buget.sh`) agregă pe categorii,
scoate procentul de execuție, marchează abaterile și poate confrunta o cifră scrisă „din memorie" cu
cea calculată.
