---
type: overview
title: 개요
tags: []
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# 개요

이 위키의 현재 종합. 소스가 추가될 때마다 LLM이 갱신한다.

## 현재 상태

- 소스 1개: [[karpathy-llm-wiki]] — 이 위키 자체의 운영 원리.
- 아직 도메인 주제가 정해지지 않았다. 첫 실제 소스를 넣으면 이 페이지가 그 주제의 종합으로 바뀐다.

## 이 위키의 작동 방식

[[llm-wiki-pattern]]을 따른다. 원본은 `raw/`에 불변으로, 위키는 LLM이 관리하며, 규칙은 [[wiki-schema]](`CLAUDE.md`)에 있다. 작업은 [[ingest]] · [[query]] · [[lint]] 세 가지.
