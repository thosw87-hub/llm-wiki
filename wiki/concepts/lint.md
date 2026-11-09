---
type: concept
title: Lint (상태 점검)
tags: [llm-wiki, operation]
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# Lint (상태 점검)

**정의**: 주기적으로 위키의 건강 상태를 LLM에게 점검시키는 작업 ([[karpathy-llm-wiki]]).

## 점검 항목

- 페이지 간 모순
- 새 소스가 대체한 낡은 주장
- 들어오는 링크가 없는 고아 페이지
- 자주 언급되지만 자체 페이지가 없는 개념
- 빠진 교차참조
- 웹 검색으로 메울 수 있는 데이터 공백

LLM은 새로 조사할 질문과 찾아볼 소스를 제안하는 데도 능하다.

## 이 저장소에서

기계적 검사는 `tools/lint.ps1`(깨진 링크·고아·index 누락·frontmatter 누락), 의미적 검사는 LLM이 수행.

## 관련

[[ingest]], [[query]]
