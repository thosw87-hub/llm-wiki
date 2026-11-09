---
type: concept
title: Ingest (소스 수집)
tags: [llm-wiki, operation]
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# Ingest (소스 수집)

**정의**: 새 소스를 원본 폴더에 넣고 LLM이 위키에 통합하게 하는 작업 ([[karpathy-llm-wiki]]).

## 흐름

1. 소스 읽기 → 2. 사람과 핵심 요점 논의 → 3. 요약 페이지 작성 → 4. 관련 엔티티·개념 페이지 갱신 → 5. index 갱신 → 6. log 추가.

- 소스 하나가 **10~15개 페이지**를 건드릴 수 있다.
- 저자는 하나씩 넣으며 직접 검토하는 방식을 선호. 일괄 처리도 가능하지만 감독이 줄어든다.
- 웹 기사는 Obsidian Web Clipper로 마크다운 변환, 이미지는 `raw/assets/`에 로컬 저장 권장.

## 관련

[[query]], [[lint]], [[wiki-schema]], [[obsidian]]
