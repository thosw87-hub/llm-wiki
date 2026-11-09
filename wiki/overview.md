---
type: overview
title: 개요
tags: []
sources: [karpathy-llm-wiki, haemu-doc-classification-20251209-v2]
created: 2026-11-09
updated: 2026-11-09
---

# 개요

이 위키의 현재 종합. 소스가 추가될 때마다 LLM이 갱신한다.

## 현재 상태 (소스 2개)

- **업무 지식**: [[haemu-doc-classification-20251209-v2]]
  - [[smmc]](새한선관) [[haemu-team]]의 업무 영역과 문서 체계를 다룬다.
  - 업무는 [[smmc-procedures]] 11개를 축으로 나뉜다.
  - 그 중심은 선원 관리([[crew-management-procedure]])다. 채용([[crew-recruitment]]), 외부심사 대응([[external-audits]]), 대외기관 업무([[external-agencies]])가 주요 갈래다.
- **위키 운영 원리**: [[karpathy-llm-wiki]]

## 현재 그림

- 해무팀은 Chemical·Gas 선박의 선원을 관리한다.
- 외부심사로 DOC·ISO·MLC·TMSA를 받는다. 이는 ISM Code 기반 안전관리체제 아래 탱커를 관리하는 선박관리사임을 시사한다 (추론).
- 아직 절차서 본문은 들어오지 않았다. 지금 위키는 "어떤 업무가 있는가"까지만 안다. "각 업무를 어떻게 하는가"는 비어 있다.

## 다음에 넣으면 좋을 소스

- 승무원관리 절차서(SMMC-CMP) 본문
- 해무팀 업무 관리대장
- 외부심사(DOC/MLC/TMSA) 지적사항·보고서

## 이 위키의 작동 방식

[[llm-wiki-pattern]]을 따른다. 원본은 `raw/`에 불변으로, 위키는 LLM이 관리하며, 규칙은 [[wiki-schema]](`CLAUDE.md`)에 있다. 작업은 [[ingest]] · [[query]] · [[lint]] 세 가지.
