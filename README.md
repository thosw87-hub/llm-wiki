# LLM Wiki

[Andrej Karpathy의 LLM Wiki 아이디어](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)를 구현한 개인 지식 베이스.
RAG처럼 매번 원문을 다시 검색하는 대신, **LLM(Claude Code)이 소스를 읽을 때마다 마크다운 위키를 쌓고 유지**한다.

- 사람: 소스를 고르고, 질문하고, 방향을 정한다.
- LLM: 요약·교차참조·모순 표시·색인·기록을 전부 한다.

## 구조

| 경로 | 역할 | 누가 쓰나 |
|---|---|---|
| `raw/` | 원본 소스 (불변) | 사람 |
| `wiki/` | 요약·엔티티·개념·분석 페이지 | LLM |
| `wiki/index.md` | 전체 페이지 카탈로그 | LLM |
| `wiki/log.md` | 시간순 작업 기록 | LLM |
| `CLAUDE.md` | 스키마 — 규칙과 작업 흐름 | 사람 + LLM |
| `tools/` | lint·검색 스크립트 | — |

## 사용법

이 폴더에서 Claude Code를 실행하고 말로 시키면 된다. `CLAUDE.md`가 자동으로 읽힌다.

```
# 소스 추가
raw/에 article.md 넣었어. ingest 해줘.
이 URL ingest 해줘: https://...

# 질문
지금까지 읽은 것 기준으로 X와 Y를 비교해줘.   (좋은 답은 wiki/analyses/에 저장)

# 점검
위키 lint 해줘.
```

직접 실행:

```powershell
powershell -ExecutionPolicy Bypass -File tools/lint.ps1
powershell -ExecutionPolicy Bypass -File tools/search.ps1 "검색어"
```

## 보기

이 폴더를 [Obsidian](https://obsidian.md) vault로 열면 `[[위키링크]]`, 그래프 뷰, Dataview(frontmatter)가 그대로 동작한다.
권장 설정: 설정 → 파일 및 링크 → 첨부파일 폴더 경로 = `raw/assets`.
