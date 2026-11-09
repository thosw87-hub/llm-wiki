---
type: concept
title: 위키 스키마
tags: [llm-wiki, configuration]
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# 위키 스키마

**정의**: LLM에게 위키 구조·규칙·작업 흐름을 알려주는 설정 문서. Claude Code는 `CLAUDE.md`, Codex는 `AGENTS.md` ([[karpathy-llm-wiki]]).

## 설명

- LLM을 "일반 챗봇"이 아니라 "규율 있는 위키 관리자"로 만드는 핵심 설정 파일.
- 사람과 LLM이 도메인에 맞춰 **함께 진화**시킨다.
- [[ingest]], [[query]], [[lint]] 각 작업의 절차를 정의한다.

## 이 저장소에서

루트의 `CLAUDE.md`가 스키마다. 폴더 구조, frontmatter, 링크 규칙, 작업 절차, 금지 사항을 담는다.

## 관련

[[llm-wiki-pattern]]
