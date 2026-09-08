# Unde sunt procedurile (skill-urile)

Folderul acesta e gol intenționat. Procedurile atelierului stau în **`.claude/skills/`**, un folder
al cărui nume începe cu punct, deci nu se vede în Finder sau Explorer decât dacă ceri afișarea
fișierelor ascunse. Există, însă, și Claude îl citește.

**De ce acolo:** doar ce se află în `.claude/skills/` poate fi pornit cu `/nume-procedură` în tab-ul
Code. Aplicația le detectează live — dacă modifici un `SKILL.md`, schimbarea se vede la următoarea
rulare, **fără să repornești aplicația**. (Asta demonstrăm la Cursul 9.)

**Unde NU se pun:**

| Loc | Merge în tab-ul Code? |
|---|---|
| `.claude/skills/nume/SKILL.md`, în folderul proiectului | ✅ da, pentru proiectul acesta |
| `~/.claude/skills/nume/SKILL.md` (Mac) sau `%USERPROFILE%\.claude\skills\nume\SKILL.md` (Windows) | ✅ da, în toate folderele tale |
| **Customize → Skills**, cu încărcare de arhivă | ❌ **nu.** Acolo ajung skill-urile pentru Cowork și sesiunile din cloud. Le vei căuta degeaba la `/`. |

## Cum îți duci o procedură acasă

La finalul atelierului, ca s-o ai în orice folder deschizi:

- **Mac:** copiază folderul procedurii din `.claude/skills/` în `~/.claude/skills/`
- **Windows:** copiază-l în `%USERPROFILE%\.claude\skills\`

Sau, mai simplu, cere-i lui Claude: *„copiază-mi procedura `referat-necesitate` în folderul meu
personal de skill-uri."*

Harta completă a celor 12 proceduri e în [`../PROCEDURI.md`](../PROCEDURI.md).
