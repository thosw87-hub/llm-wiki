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
## [2026-11-09] refactor | 「조근규정」 확인 항목 제거
- 갱신: [[haemu-doc-classification-20251209-v2]], [[crew-management-procedure]]
- 메모: 사용자 지시로 「조근규정」 의미 확인은 하지 않음. 폴더명은 원문대로 유지.
## [2026-11-09] refactor | KSSU 정체 확인
- 갱신: [[external-agencies]]
- 메모: 사용자 확인 — KSSU = 전국 선박관리 노동조합. 표기는 KSSU 그대로 유지.
## [2026-11-09] schema | 관리자 이름 지정
- CLAUDE.md: 위키 관리자 이름을 「해리」로 지정.
## [2026-11-09] schema | 팀 구성 — 해리 팀장 지정
- CLAUDE.md: 「0. 팀」 추가. 팀장 해리(harry), 팀원 claude / codex / agy. 팀원은 커밋·푸시 및 index/log 수정 금지.