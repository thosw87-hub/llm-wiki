---
type: log
title: 작업 기록
---

# 작업 기록

append-only. 새 항목은 맨 아래에 추가한다. 최근 5건: `Select-String -Path wiki/log.md -Pattern '^## \[' | Select-Object -Last 5`

## [2026-11-09] schema | 저장소 초기화
- CLAUDE.md(스키마), 디렉터리 구조, tools/lint.ps1, tools/search.ps1 생성.

## [2026-11-09] ingest | LLM Wiki (Karpathy 아이디어 파일)
- 원본: raw/karpathy-llm-wiki.md (gist 442a6bf, 2026-04-04)
- 생성: [[karpathy-llm-wiki]], [[llm-wiki-pattern]], [[rag]], [[wiki-schema]], [[ingest]], [[query]], [[lint]], [[memex]], [[andrej-karpathy]], [[obsidian]], [[qmd]], [[overview]]
- 메모: 첫 소스이자 위키 운영 원리 문서. 검토 의견(오류 누적 위험, 규모 한계)을 소스 페이지에 기록.
