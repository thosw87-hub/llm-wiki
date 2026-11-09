---
type: concept
title: LLM Wiki 패턴
tags: [llm, knowledge-base, pkm]
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# LLM Wiki 패턴

**정의**: LLM 에이전트가 원본 소스를 읽어 구조화·상호링크된 마크다운 위키를 점진적으로 구축하고 유지하는 개인 지식 베이스 운영 방식 ([[karpathy-llm-wiki]]).

## 설명

- [[rag]]가 질의 시점에 원문 조각을 검색하는 반면, 이 패턴은 소스 추가 시점에 지식을 "컴파일"해 위키에 통합한다.
- 위키는 **복리로 쌓이는 산출물**: 교차참조와 모순 표시, 종합이 이미 들어 있다.
- 3계층: 원본 소스(불변) / 위키(LLM 소유) / [[wiki-schema]](규칙).
- 3작업: [[ingest]], [[query]], [[lint]].
- 사람은 큐레이션과 질문, LLM은 나머지 전부.

## 적용 사례 ([[karpathy-llm-wiki]])

개인(목표·건강·자기계발), 연구(논문을 수개월 읽으며 논지 발전), 책 읽기(인물·주제·플롯 동반 위키), 팀 위키(Slack·회의록 기반), 경쟁 분석·실사·여행 계획·강의 노트.

## 비판·주의 (추론)

- LLM 요약의 오류가 위키에 고착될 수 있다 → 출처 링크와 불변 원본으로 완화.
- 규모가 커지면 index만으로는 부족 → [[qmd]] 같은 검색 도구.

## 관련

[[memex]], [[obsidian]], [[andrej-karpathy]]
