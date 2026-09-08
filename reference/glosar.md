# Glosar — termeni Claude Code

Termenii pe care îi întâlnești în atelier, pe scurt și în limbaj de zi cu zi.

## Ce e Claude Code

- **Agent** — un asistent AI care nu doar răspunde în chat, ci *face* lucruri pe fișierele tale, în mai
  mulți pași: citește, scrie, rulează cod, verifică. Claude Code este un agent.
- **Tab-ul Code** — locul din aplicația Claude unde lucrăm. Alegi un folder de pe calculatorul tău
  („Select folder"), confirmi că ai încredere în el, și de acolo agentul lucrează în el.
- **Proiect / folder** — folderul pe care l-ai deschis. Tot ce e acolo devine materialul cu care
  lucrează agentul. **Fișierele rămân** între sesiuni; conversația, nu.
- **Context (fereastra de context)** — „memoria de lucru" a agentului pentru conversația curentă. E
  limitată și costă; de aceea pornim fiecare curs într-o conversație proaspătă. O vezi în **inelul de
  utilizare**, lângă selectorul de model.

## Ce vezi pe ecran

- **Indicatorul de diferențe** (`+12 −1`) — apare după ce agentul schimbă fișiere. Clic pe el deschide
  lista fișierelor modificate, cu ce s-a schimbat în fiecare. Ăsta e „vezi ce am făcut".
- **Panoul de fișier** — clic pe orice cale de fișier din conversație și se deschide, editabil.
  HTML-urile, PDF-urile și imaginile se deschid în panoul Browser.
- **Selectorul de mod** — lângă butonul de trimitere: **Manual** (cere voie la fiecare pas), **Auto**
  (lucrează fără să te întrerupă), **Accept edits** (acceptă modificările de fișiere, întreabă la
  restul), **Plan** (propune un plan, nu atinge nimic până nu aprobi). Alegerea se ține minte per folder.
- **`@nume-fișier`** — în căsuța de scris, țintește exact un fișier și îl pune sub nasul agentului.
- **`/nume-procedură`** — pornește o procedură (skill) din `.claude/skills/`.
- **`/clear`** — golește conversația, păstrează folderul.
- **`/rewind`** — dă înapoi modificările de fișiere. **Nu** anulează redenumirile făcute prin comenzi
  (de aceea păstrezi arhiva).

## Cum îl înveți să lucreze ca tine

- **`CLAUDE.md`** — un fișier de instrucțiuni pe care Claude Code îl citește **automat** când deschizi
  folderul. Spune „cum se lucrează aici" (rol, reguli, stil). Un onboarding scris o singură dată.
  `AGENTS.md` e același lucru sub alt nume, folosit de alte unelte.
- **Procedură / skill** — o fișă de protocol cu nume, scrisă într-un fișier `SKILL.md`, pe care o
  pornești pentru un anumit tip de muncă („sintetizează literatura", „calculează execuția bugetară").
  Aceiași pași, de fiecare dată. Unele au și **cod** care chiar rulează. Stau în `.claude/skills/` în
  folderul proiectului, sau în `~/.claude/skills/` (Mac) / `%USERPROFILE%\.claude\skills\` (Windows)
  ca să fie disponibile peste tot.
- **Subagent** — un agent „copil" pe care agentul principal îl lansează pentru o sub-sarcină, cu
  **propriul lui context, proaspăt**. Util când vrei mai multe perspective independente (un panel de
  recenzori care nu se influențează între ei). Diferența față de o procedură: procedura rulează în
  aceeași conversație, subagentul pornește cu mintea goală.
- **Rutină** — o sarcină definită o dată, care rulează **pe un program** (zilnic, săptămânal), fără
  tine în cameră. Rulează doar cu aplicația pornită și calculatorul treaz.

## Cum ajunge în afara folderului

- **Conector** — o legătură gata făcută spre un serviciu (Google Calendar, Gmail, Drive), pornită din
  butonul `+` de lângă căsuța de scris.
- **MCP** (*Model Context Protocol*) — standardul deschis prin care o unealtă sau o sursă de date se
  leagă la un agent. Adaptorul universal. Se pornește o dată din **Settings → Connectors → Browse
  connectors** și după aia îl chemi în cuvinte; **Consensus**, indexul de lucrări peer-reviewed, e
  exemplul din Cursul 11.
- **API** (*Application Programming Interface*) — fereastra pe care un program o deschide altor
  programe. Multe indexuri academice (PubMed, Europe PMC, Crossref, OpenAlex) au unul public, fără cont.

## Ce nu trebuie să uiți

- **Halucinație** — când AI-ul produce informație plauzibilă dar **falsă**: citări, autori, DOI-uri sau
  cifre care nu există. Riscul numărul unu în cercetare, și motivul pentru care tot atelierul verifică.
- **Ancoră / sursă** — locul concret din care provine o afirmație (fișierul, rândul, lucrarea). O
  afirmație fără ancoră nu e un rezultat, e o propunere.
- **`neverificat ≠ fals`** — dacă nu am putut confirma ceva, scriu „de verificat" sau „negăsit", nu
  „inexistent" și nici nu completez cu ceva plauzibil.
