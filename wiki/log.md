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

## [2026-11-09] ingest | 해무팀 문서 분류표 (2025-12-09, Version 2)
- 원본: raw/해무팀 문서 분류표 20251209-Version 2.xlsx (\\192.168.0.2\3 해무팀 에서 복사)
- 생성: [[haemu-doc-classification-20251209-v2]], [[haemu-team]], [[smmc]], [[smmc-procedures]], [[crew-management-procedure]], [[external-audits]], [[crew-recruitment]], [[external-agencies]]
- 갱신: [[overview]]
- 메모: 사용자 확인 — SMMC = 새한선관. 분류표 문제점(장기근속자 표창 중복, DEBRIEING 오타, 번호 형식 혼재) 기록. 「조근규정」 의미·KSSU 정식명칭 미확인.