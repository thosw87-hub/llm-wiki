---
type: concept
title: RAG (검색 증강 생성)
tags: [llm, retrieval]
sources: [karpathy-llm-wiki]
created: 2026-11-09
updated: 2026-11-09
---

# RAG (Retrieval-Augmented Generation)

**정의**: 문서 묶음을 올려두고, 질문 시점에 관련 조각(chunk)을 검색해 LLM이 답을 생성하는 방식.

## LLM Wiki 관점의 한계 ([[karpathy-llm-wiki]])

- 매 질문마다 지식을 처음부터 다시 발견한다. **축적이 없다.**
- 여러 문서를 종합해야 하는 미묘한 질문일수록 매번 조각을 다시 찾아 맞춰야 한다.
- 예: NotebookLM, ChatGPT 파일 업로드, 대부분의 RAG 시스템.

## 대안

[[llm-wiki-pattern]] — 지식을 미리 컴파일해 위키로 유지. 단, 위키가 매우 커지면 위키 자체에 대한 검색([[qmd]]의 BM25/벡터 하이브리드)이 다시 필요해진다는 점에서 두 방식은 배타적이라기보다 보완적이다 (추론).
