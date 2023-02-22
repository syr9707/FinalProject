# JobDongSan 잡동산
> 어린이들에게 직업 탐색을 통한 진로 설계를 제공하는 웹사이트

* 서버 : http://.../ (현재 내렸습니다.)

## 💥 프로젝트 기획
* 타겟 : 어린이 🤸‍♀️🤸‍♂
* 주제 : 어린이를 위한 플랫폼 / 커뮤니티
* 기획 의도
  * 어린이에게 맞춤형 직업 컨텐츠를 제공하여 즐거운 진로 설계를 가능하게 함
  * 본 과정에서 학습한 AI를 활용하여 어린이 직업 탐색 서비스를 제공함
  * 분산되어 있는 직업 체험 장소 정보를 모아서 제공함

## ✔️ 개요
* 개발 기간
    - 2022.08 ~ 2022.09.23
* 개발 인원
    - 4인 팀 프로젝트

## 🛠️ 프로젝트 개발 환경
* 개발 언어
  * Java 11
* 개발 환경
  * Spring Boot
  * STS
  * Naver Cloud Platform
  * Jenkins
* DB / 형상관리
  * MySQL
  * Git, Github

## 💌 역할 & 담당한 기능
* 공통
  * 프로젝트 기획 / 기획안 / UI 컨셉 / Notion 작성
* 채동혁 (팀장)
  * 메인(인덱스)
  * 로그인/회원가입
  * 마이페이지
  * 직업 챗봇
* 박상완
  * Git
  * 흥미 유형 검사
  * 동영상 세부 페이지
  * 마이페이지 게시물 저장
* 서지현
  * 주제 발표
  * 지역별 체험 장소 Map 구현
* 신예린
  * 수행 일지
  * 직업 정보 조회 및 챗봇
  * 게시물 검색
  * 동영상 조회
  * 마이페이지 게시물 저장

## 🚩 핵심 로직
* SNS 로그인
  * 카카오
  * 네이버
  * 구글
* 직업 적합도 검사
  * '홀랜드 성격 유형 검사' Open API 활용
* 직업별 챗봇
  * Naver AI Chatbot API 이용
  * 직업별 다르게 나오는 챗봇
* 체험장소 Map
  * Naver Map API 이용

## ▶️ 홈페이지 계층 구조도
![](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/eaf663c1-e958-439a-ba34-e330ff48bfc2/ui_%EC%84%A4%EA%B3%84.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230130%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230130T155543Z&X-Amz-Expires=86400&X-Amz-Signature=1c961bfeda394757ddc0935f7544a9edb5ca6dee769ef12dd6e9029d67806c88&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22ui%2520%25EC%2584%25A4%25EA%25B3%2584.JPG.jpg%22&x-id=GetObject)

## ▶️ DB 구조
![](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6d976dea-3942-4939-8274-2c1c25988270/finaldb2.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230222%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230222T050102Z&X-Amz-Expires=86400&X-Amz-Signature=79d329f4552ede9f9528720538e5a99e7c62356caeae9de4c358eb3c9d1e6c55&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22finaldb2.jpg%22&x-id=GetObject)

