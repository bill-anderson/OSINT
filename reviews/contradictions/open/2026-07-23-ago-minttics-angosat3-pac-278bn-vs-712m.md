---
type: contradiction
id: 2026-07-23-ago-minttics-angosat3-pac-278bn-vs-712m
opened: 2026-07-23
shape: supersession
status: open
attempt: 0
---

# MINTTICS AngoSat-3 / satellite line in the PAC 2025: Kz 278 bn, or Kz 712,7 million?

Surfaced 2026-07-23 by the AGO 2025 domestic-finance sweep. The wiki holds a record built
from the **first** MINTTICS Plano Anual de Contratação (PAC) 2025 (21-Jan-2025), which the
ministry itself **corrected three weeks later**. The held figure is a pre-correction artefact.

## The two values

- **Held record `ago-2025-minttics-angosat-3-unclear`** (`raw/2025-01-01-ago-2025-minttics-angosat-3-unclear-angosat3-pac.md`),
  `amount_total: 278 000 000 000` (Kz 278 bn), sourced to Novo Jornal (2025-02-06) reporting the
  **first PAC 2025** — where MINTTICS' 29 projects totalled **Kz 616,7 biliões** (larger than the
  entire OGE 2025 of Kz 34 biliões, an obvious scale error). Novo Jornal attributed ~Kz 278 bn to
  "Angosat-3".

- **The corrected PAC** (dated 27-Feb-2025, published 05-Mar-2025 on the Portal de Compras
  Públicas), reported by pti.ao 2025-03-25 (now staged in `new/`), keeps the same 29 projects but
  corrects the estimates to a **total of Kz 225,6 mil milhões**. The satellite lines become:
  - **Construção e Lançamento de um Satélite Doméstico:** Kz 298,7 biliões → **Kz 712,7 milhões**
  - **Sistema de Observação da Terra:** Kz 10,4 biliões → **Kz 77,7 milhões**

## Why this is a supersession, not a coincidence

Same instrument, same publisher, same 29 projects — the ministry re-published the PAC with the
contract estimates corrected. The first PAC's figures were the *biliões*/*mil milhões* scale trap
the extraction notes warn of, realised at source (a total exceeding the whole national budget).
The held Kz 278 bn is therefore **not a competing estimate but a withdrawn one**.

## Questions to settle

1. Which corrected line does the held "Angosat-3" record correspond to — the satellite
   construction (Kz 712,7 M) or the earth-observation system (Kz 77,7 M)? Novo Jornal conflated
   Angosat-3 with earth observation; the corrected PAC separates them.
2. Should the record be **re-based to the corrected PAC** figure (preferred — quality beats
   primacy, and the newer value supersedes), keeping the Kz 278 bn only as a dated prior if the
   trajectory means anything? A PAC is a **procurement estimate, not an appropriation** — the
   record's `budget_stage: unclear` should stay, and the OGE 2025 Mapas (acquisitions) is the
   appropriation arbiter.
3. Does the corrected PAC total (Kz 225,6 mil milhões) reconcile with the OGE 2025 digital sector
   envelope (Kz 226,4 mil milhões, per the staged pti.ao piece)? The near-match suggests the
   corrected PAC is scaled to the actual vote. **Strengthened at ingest, 2026-07-23:** two
   corrected PAC lines match OGE 2025 programme lines *exactly* — "Implementação da Rede Nacional
   de Banda Larga" **Kz 107,8 mil milhões** = the OGE "Expansão da rede 4G" line, and "Plataforma
   Analítica, Centro de Dados Principal, Back Up e Plataforma Nacional de Nuvens" **Kz 70,5 mil
   milhões** = the OGE "melhoria da posição no Índice Global de Cibersegurança" line
   (`raw/2026-02-20-ago-oge-2026-comunicacoes-programa-corte.md`,
   `raw/2025-11-06-ago-oge-2026-ciberseguranca-32bn.md`). Two exact coincidences are not chance:
   the corrected PAC looks re-based on the enacted vote, with different line names. Settling this
   also settles whether the OGE 4G line carries the **China Eximbank-financed** RNBL
   (`raw/2023-01-01-eximbank-cn-ago-003-…`), which would move part of it to `non-state` origin.

## Affected

- `raw/2025-01-01-ago-2025-minttics-angosat-3-unclear-angosat3-pac.md` — the Kz 278 bn record;
  the correction is now recorded as a dated line in its `## Development history` (ingest,
  2026-07-23), **not** applied to `amount_total` — that is reconcile's call.
- Corrective source admitted: `raw/2025-03-25-ago-minttics-pac-2025-actualizacao.md`.
- No separate finance records were built from the corrected PAC lines (ingest, 2026-07-23), to
  avoid double-counting them against the OGE programme records now held.
- Full corrected PAC 2025 document queued in `reviews/acquisitions.md` (`ago-minttics-pac-2025`).

**CC holds no PAC PDF on file** — both the first and corrected PAC are known only through pti.ao /
Novo Jornal reporting; the primary is queued for acquisition. That absence is part of the finding.
