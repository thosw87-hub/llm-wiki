---
type: entity
title: qmd
tags: [tool, search]
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# qmd

**정의**: 마크다운 파일용 로컬 검색 엔진. BM25/벡터 하이브리드 검색과 LLM 재순위화를 모두 기기 내에서 수행한다 ([[karpathy-llm-wiki]]).

- CLI(LLM이 셸로 호출)와 MCP 서버(LLM의 네이티브 도구) 둘 다 제공.
- 위키가 커져 `index.md`만으로 부족해질 때 도입을 고려.
- 저장소: https://github.com/tobi/qmd

## 이 저장소에서

당장은 `tools/search.ps1`(단순 전문 검색)로 충분. 페이지가 수백 개를 넘으면 qmd 도입 검토.

## 관련

[[query]], [[rag]]
