---
type: concept
title: Query (질의)
tags: [llm-wiki, operation]
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# Query (질의)

**정의**: 위키를 대상으로 질문하면 LLM이 관련 페이지를 찾아 읽고 인용과 함께 답하는 작업 ([[karpathy-llm-wiki]]).

## 핵심

- LLM은 `index.md`를 먼저 읽고 관련 페이지로 내려간다.
- 답의 형태는 다양: 마크다운 페이지, 비교표, Marp 슬라이드, matplotlib 차트, 캔버스.
- **좋은 답은 위키에 새 페이지로 되돌려 저장한다.** 탐색 결과도 소스처럼 복리로 쌓인다. 이 저장소에선 `wiki/analyses/`.

## 관련

[[ingest]], [[lint]], [[qmd]]
