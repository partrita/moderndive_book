---
title: 업데이트 내용
---

# ModernDive 1.1.0.9000

* 제2장 데이터 시각화: 독자들에게 혼란을 주었던 `%>%` 연산자에 대한 약식 소개(제3장 데이터 전처리에서 다룸)를 제거했습니다.
대신 이제 `moderndive` 버전 0.5.3의 미리 준비된 `alaska_flights` 및 `early_january_weather` 데이터 프레임을 사용합니다.
* 제6장 다중 회귀: `@kmkinnaird` 의 제안에 따라 "6.3.1 시각화를 이용한 모델 선택"을 다음과 같이 나누었습니다.
    + "6.3.1 시각화를 이용한 모델 선택"
    + "6.3.2 R-제곱을 이용한 모델 선택" 추가
* 제7장 표집(Sampling): `@kmkinnaird` 의 제안에 따라 다음과 같이 개편했습니다.
    + "7.3.1 용어 및 표기법": 정의를 주제별로 묶고 표집 실습과 다시 연결했습니다.
    + "7.3.2 통계적 정의"
    + "7.5.2 중심 극한 정리"를 별도 섹션으로 이동하여 사후 고려 사항이 아닌 보다 두드러지게 만들었습니다.
    + 새로운 "7.6.2 이론 기반 표준 오차"를 생성했습니다. 이는 "8.7.2 이론 기반 신뢰 구간"을 두 부분으로 나누어 앞부분을 제7장 표집으로 이동시킨 것입니다. 이로써 4개의 모든 통계적 추론 장(제7~11장)이 마지막에 각각의 "이론 기반 X" 하위 섹션을 갖게 되어 시뮬레이션 기반 방법과 전통적 방법 간의 차이를 좁힐 수 있게 되었습니다.

***

# ModernDive 1.1.0

* 오타 수정 및 명확한 문구 조정
* `@mariumtapal` 의 큰 도움으로 미래의 bookdown 사용자들이 이해하기 쉽도록 모든 R Markdown 코드를 정리하고 개편했습니다. 단, 인쇄본 독자들이 보는 모든 코드는 그대로 유지되었습니다.
* 부록 C (온라인 전용):
    + "Reach for the Stars"에서 "Tips and Tricks"(팁과 요령)로 이름을 변경했습니다.
    + `@smetzer180` 이 주로 작성한, 우리가 경험한 가장 일반적인 데이터 전처리 질문에 대한 C.1 섹션을 추가했습니다.

***

# ModernDive 1.0.0

* 버전 1.0.0은 우리의 [CRC Press 인쇄본](https://www.crcpress.com/Statistical-Inference-via-Data-Science-A-ModernDive-into-R-and-the-Tidyverse/Ismay-Kim/p/book/9780367409821)에 해당합니다.
* 헥스 스티커와의 일관성을 위해 책 제목의 단어를 "moderndive"에서 "ModernDive"로 변경했습니다.
* Kelly S. McConville의 서문을 추가했습니다. 감사합니다, `@mcconvil` !
* 책 전체의 다양한 오타를 수정하고 언어를 일관되게 만들었습니다. 예를 들어, "datasets"나 "data-sets" 대신 "data sets"를 사용했습니다.
* [이 tidyverse 기사](https://tidyr.tidyverse.org/dev/articles/pivot.html)를 따라 `tidyr`의 `gather()` 및 `spread()`를 `pivot_long()` 및 `pivot_wide()`로 전환했습니다.
* `ggplot2`에 사용자 정의 geom 확장인 `geom_parallel_slopes()`를 추가했습니다.

***

# ModernDive 0.6.1

* 장 번호를 변경했습니다. "제1장 서론"이 이제 "서문"이 되었으며, 이에 따라 모든 장 번호가 하나씩 줄어들었습니다.
* 정규 분포(표집 장)와 로그 변환(데이터 스토리 텔링 장)에 대한 논의를 부록 A "통계적 배경"으로 이동했습니다.
* 책에 사용된 이미지를 업데이트했습니다.
* 오타 수정을 위해 책 전체를 스캔했습니다.
* CRC Press 인쇄 버전을 위해 많은 이미지의 그레이스케일 버전을 제작했습니다.

***

# ModernDive 0.6.0

CRC Press의 인쇄본에 해당하는 v1.0.0까지 화장품 같은 몇 가지 편집만 남았습니다!

## 추론 장의 첫 번째 패스 완료

"깔끔하고 투명한" 통계적 추론을 위한 `infer` 패키지를 사용하여 제9-11장의 주요 재구성 및 정리를 완료했습니다.

* 제9장: 부트스트래핑 및 신뢰 구간
    + 은행에서 50페니를 표집하고 이 표본에서 다시 재표집하는 촉각적 실습.
    + 다음 섹션 추가:
        1. "신뢰 구간 해석", 특히 신뢰 구간 너비의 결정 요인.
        1. p-hat의 표준 오차 공식을 사용하는 "이론 기반 신뢰 구간", 이를 통해 시뮬레이션과 이론 기반 방법 간의 간극을 메웠습니다.
* 제10장: 가설 검정
    + 은행 승진에서의 성차별에 관한 `promotions` 예제 추가. 데이터 소스: `openintro::gender.discrimination`
    + t-검정을 사용하는 "이론 기반 가설 검정" 섹션 추가, 이를 통해 시뮬레이션과 이론 기반 방법 간의 간극을 메웠습니다.
* 제11장: 회귀 추론
    + 추론을 위한 LINE 조건에 대한 논의. 특히 초보자가 직접 잔차 분석을 할 수 있도록 `broom::augment()`에 대한 래퍼 함수인 `moderndive::get_regression_points()`를 사용했습니다.

## 기타 변경 사항

* 제7장: 다중 회귀
    + 모델 선택에 관한 섹션 7.3.1 추가: "상호작용" 모델과 "평행 기울기" 모델 사이의 선택
* 제8장: 표집
    + 정규 분포에 대한 더 심도 있는 논의가 포함된 섹션 8.5.3 추가
* 제12장: "데이터로 이야기하기(Tell your story with data)"로 이름 변경

***

# ModernDive 0.5.0

## 주요 내용

* "데이터 전처리" 장이 이제 "Tidy 데이터" 장 뒤에 옵니다.
* `geom_histogram()`, `geom_boxplot()`, 그리고 "tidy" 데이터에 대한 설명과 예제를 개선했습니다.
* 잔차 분석을 회귀 제6장 및 7장에서 제11장 회귀 추론으로 이동했습니다.
* 표집에 관한 제8장을 재구성했습니다.
* 모든 학습 체크 해설이 부록 D에 포함되었습니다.
* PDF 빌드가 다시 추가되었습니다 (아직 작업 중).

## 모든 내용 변경 사항

* 제목 변경
    + 기존: "Statistical Inference via Data Science in R"
    + 변경: "Statistical Inference via Data Science: A moderndive into R and the tidyverse"
* 제2장 - 시작하기
    + `@andrewheiss` 가 작성한 하위 섹션 2.2.3 "오류, 경고 및 메시지" 추가
* 제3장 - 데이터 시각화:
    + 더 간단한 입문용 `geom_histogram()` 및 `geom_boxplot()` 예제 추가
    + 이 장에 포함된 데이터 전처리 미리보기 양, 특히 `join`을 줄이기 시작했습니다.
    + 결론 섹션 정리
    + 치트시트 추가
* "제4장 Tidy 데이터"와 "제5장 데이터 전처리"의 순서 변경: 이제 데이터 전처리가 먼저 나옵니다.
* 제4장 - 데이터 전처리:
    + 치트시트 추가
* 제5장 - "가져오기 및 tidy 데이터"로 이름 변경
    + 섹션 순서 재조정: 가져오기 후 titdying
    + "non-tidy 벽을 만나는" `fivethirtyeight::drinks` 예제 추가 후 `tidyr::gather()` 사용
    + 과테말라 민주주의 점수를 사례 연구로 만들었습니다.
    + `tidyverse` 패키지가 무엇인지에 대한 논의를 추가했습니다.
    + 정규형에 대한 논의를 제4장: 데이터 전처리 - 조인으로 이동했습니다.
    + 식별 변수와 측정 변수에 대한 논의를 제2장: 데이터 시작하기로 이동했습니다.
* 제6장 - 기본 회귀:
    + 잔차 분석을 제11장으로 이동
* 제7장 - 다중 회귀:
    + 잔차 분석을 제11장으로 이동
* 제8장 - 표집: 설명 및 박람회의 주요 리팩토링; 아래 참조
* 제11장 - 회귀 추론:
    + 제6장 및 7장의 잔차 분석을 여기로 이동
* 모든 학습 체크 해설을 부록 D로 이동

### 제8장 표집 개편

**이전 장 구조**:

1. 표집 소개
    a) 표집 관련 개념
    b) 표집을 통한 추론
2. 촉각적 표집 시뮬레이션
    a) 삽을 한 번 사용하기
    b) 삽을 33번 사용하기
3. 가상 표집 시뮬레이션
    a) 삽을 한 번 사용하기
    b) 삽을 33번 사용하기
    c) 삽을 1000번 사용하기
    d) 다른 삽 사용하기
4. 실제 표집: 여론 조사
5. 결론
    a) 중심 극한 정리
    b) 앞으로의 계획
    c) R 코드 스크립트

**새로운 장 구조**:

1. 활동: 그릇에서 표집하기
    a) 질문: 이 그릇의 빨간색 비율은 얼마인가?
    b) 삽을 한 번 사용하기
    c) 삽을 33번 사용하기
1. 컴퓨터 시뮬레이션:
    a) 시뮬레이션이란 무엇인가? 방금 손으로 "촉각적" 시뮬레이션을 했으니, 이제 컴퓨터를 사용해 봅시다.
    b) 삽을 한 번 사용하기
    c) 삽을 33번 사용하기
    d) 삽을 1000번 사용하기
    e) 다른 삽 사용하기
1. 목표: 표집 변동에 따른 변동 연구
    a) 이미 알고 계실 것입니다: 표본 크기가 클수록 "더 나은" 추측이 가능합니다.
    b) 삽 비교: 표본 크기의 역할
1. 프레임워크: 표집
    a) 표집 용어(모집단, 표본, 점 추정치 등)
    b) 통계적 개념: 표집 분포 및 표준 오차
    c) 컴퓨터의 난수 생성기
1. 해석:
    a) 차이의 시각적 표시
1. 사례 연구: 오바마 여론 조사
1. 큰 그림:
    a) 추론 시나리오 표: 그릇과 오바마 여론 조사 추가 (둘 다 p)
    b) 이것이 왜 작동하는가? 이론적 결과: CLT
    c) 공식이 있습니다: 분모에 sqrt(n)이 있는 표준 오차 공식
    d) 부록: 정규 분포 논의

***

# ModernDive 0.4.0

## 주요 내용

1. [`infer` 패키지](http://infer.netlify.com/)가 본격적으로 준비되었습니다! 따라서 신뢰 구간과 가설 검정에 관한 제9장과 10장에 이 패키지를 통합하는 첫 단계를 밟았습니다!
1. "데이터를 이용한 사고"에 관한 제12장에는 이제 Kaggle.com의 [시애틀 주택 가격](https://www.kaggle.com/harlfoxem/housesalesprediction) 데이터셋을 사용한 사례 연구가 포함됩니다. 알버트 Y. 킴의 새로운 ["Modeling with Data in the Tidyverse"](https://www.datacamp.com/courses/modeling-with-data-in-the-tidyverse) DataCamp 과정의 제3장과 4장은 이 분석을 기반으로 합니다!
1. DataCamp 이야기가 나와서 말인데, 책의 다양한 장과 직접적으로 일치하는 [다양한 DataCamp 과정](https://moderndive.netlify.com/index.html#datacamp)을 독자들에게 안내합니다!
1. 표집에 관한 제8장을 상당히 정리했습니다! 특히, 표집 그릇 촉각 및 가상 시뮬레이션과 연결하기 위해 [2013년 오바마 지지율 여론 조사](https://www.npr.org/sections/itsallpolitics/2013/12/04/248793753/poll-support-for-obama-among-young-americans-eroding) 사례를 추가하고, 궁극적으로 우리가 **표집을 통한 통계적 추론**을 수행하고 있음을 매우 명확히 했습니다.

## 모든 내용 변경 사항

* 서론: 각 장에 해당하는 다양한 DataCamp 과정에 대한 섹션을 추가했습니다. 또한, 각 장의 시작 부분에 관련 DataCamp 과정 링크가 포함되어 있습니다.
* 제3장 - 데이터 시각화:
    + 단순화된 `geom_jitter()` 예제 추가
    + `geom_boxplots`에서 수염(whiskers)과 이상치(outliers)가 생성되는 방식에 대한 추가 설명
    + 이름이 있는 5가지 그래프에 대한 요약표 추가
* 제4장 - Tidy 데이터:
    + RStudio를 통해 Excel 데이터를 가져오는 섹션 추가
    + tidy vs non-tidy 예제 추가: `fivethirtyeight::drinks`
* 제5장 - 데이터 전처리:
    + [사용 가능한 좌석 마일(available seat miles)](https://en.wikipedia.org/wiki/Available_seat_miles) 데이터 전처리 사례 연구 추가
    + "5개 주요 동사(5 Main Verbs)" 5MV 개념 폐기
    + 여러 변수에 대한 `_join()` 및 `group_by()` 추가
* 제6장 - 기본 회귀:
    + 회귀에서 범주형 변수를 사용할 때 표시기/더미 변수(indicator/dummy variables)에 대한 설명을 명확히 했습니다.
    + "상관관계가 반드시 인과관계는 아니다" 하위 섹션을 "신발을 신고 자는 것이 두통을 유발하는가?" 예제와 [인과 지도](https://github.com/moderndive/moderndive_book/blob/master/images/flowcharts/flowchart.009-cropped.png)를 포함하여 확장했습니다.
    + `moderndive::get_regression_table()` 함수를 도입할 때 "래퍼 함수(wrapper function)"의 개념을 소개했습니다.
    + 빠른 수치 요약을 위해 모든 `base::summary()`를 `skimr::skim()`으로 대체했습니다.
* 제7장 - 다중 회귀:
    + 모든 "다른 모든 조건이 동일하다면(everything else being equal)"이라는 해석 문구를 "모델의 다른 모든 변수를 고려할 때/통제할 때"로 변경했습니다.
* 제8장 - 표집:
    + 표집 용어와 정의를 상당히 정리했으며, 우리가 **추론을 위해 표집**하고 있음을 더 명확히 했습니다.
    + 섹션 및 하위 섹션 구조를 훨씬 깔끔하게 정리했습니다:
        1. 촉각적 표집 시뮬레이션
        1. 가상 표집 시뮬레이션
        1. 실제 표집: 2013년 오바마 지지율 여론 조사 예제를 도입하고 모든 것을 [표집 그릇](https://github.com/moderndive/moderndive_book/blob/master/images/sampling_bowl.jpeg)과 연결했습니다.
* **주요 개편**: 제9장 - 신뢰 구간
    + [`infer` 패키지](http://infer.netlify.com/)가 본격적으로 준비됨에 따라, 책에 통합하는 첫 단계를 밟았습니다.
* **주요 개편**: 제10장 - 가설 검정
    + [`infer` 패키지](http://infer.netlify.com/)가 본격적으로 준비됨에 따라, 책에 통합하는 첫 단계를 밟았습니다.
    + Allan Downey의 ["There is only one test"(검정은 오직 하나뿐)](http://allendowney.blogspot.com/2016/06/there-is-still-only-one-test.html) 아이디어에 대한 논의를 추가했습니다.
* 제11장 - 회귀 추론
    + `infer` 패키지를 사용한 단순 선형 회귀 예제 추가
* **주요 개편**: 제12장 - 데이터로 생각하기
    + Kaggle의 [시애틀 주택 가격](https://www.kaggle.com/harlfoxem/housesalesprediction) 데이터셋 사례 연구를 추가했으며, 이는 이제 `moderndive` 패키지의 `house_prices` 데이터 프레임에서 사용할 수 있습니다.
        1. 새로운 ["Modeling with Data in the Tidyverse"](https://www.datacamp.com/courses/modeling-with-data-in-the-tidyverse) DataCamp 과정의 제3장과 4장은 이 분석을 기반으로 합니다.
        1. `log10` 변환의 중요성에 대한 논의를 포함합니다.
        1. 예측을 위한 모델링/회귀를 소개합니다: 주택 가격 예측
    + `fivethirtyeight` 데이터를 사용하여 "효과적인 데이터 스토리텔링"의 개요를 잡고 미국 출생 데이터를 사용한 작은 사례를 하나 추가했습니다.
    + 장의 시작 부분에서 서론의 ModernDive [플로우차트](https://github.com/moderndive/moderndive_book/blob/master/images/flowcharts/flowchart/flowchart.002.png) 논의를 다시 방문하여 마무리 짓습니다.

## 기타 변경 사항

* CRAN의 `moderndive` 패키지를 0.2.0으로 업데이트했습니다. [`NEWS.md`](https://github.com/moderndive/moderndive/releases) 참조

***

# ModernDive 0.3.0

## 내용 변경 사항

* [섹션 1.1](https://moderndive.com/index.html#intro-for-students) 상단의 플로우차트에 따라 장 순서를 재구성했습니다.
* 제2장 - 시작하기: `install.packages()` 및 `library()`에 대한 비유(휴대폰에 앱을 다운로드하는 것과 유사함)를 포함하여 R 패키지에 대한 설명을 더 추가했습니다.
* 책에 "데이터 모델링" 부분 추가
    + 제6장 - 기본 회귀: 하나의 수치형 설명 변수, 상관관계, 하나의 범주형 설명 변수
    + 제7장 - 다중 회귀: 두 개의 수치형 설명 변수, 하나의 수치형 및 하나의 범주형, 상호작용 효과, 심슨의 역설
    + 깨끗한 회귀표 및 관측값/적합값 + 잔차 출력을 단순화하기 위해 `get_regression_table()` 및 `get_regression_points()` 래퍼 함수가 포함된 새로운 [`moderndive`](https://moderndive.github.io/moderndive/) 패키지를 사용합니다.
* 책에 "통계적 추론" 부분 추가
    + [표집 그릇](https://github.com/moderndive/moderndive/blob/master/data-raw/sampling_bowl.jpeg)을 사용한 제8장 - 표집(아직 제작 중) 추가
    + 신뢰 구간과 가설 검정에 관한 제9장과 10장은 최근 출시된 패키지인 [`infer`: 통계적 추론을 위한 tidyverse 친화적 R 패키지](https://github.com/andrewpbray/infer)를 기다리느라 아직 업데이트되지 않았습니다.
    + 제11장 - 회귀 추론(아직 제작 중)을 추가했으며, 여기서 제6장 및 7장에서 적합시킨 회귀 모델을 다시 살펴볼 것입니다.

## 기타 변경 사항

- 책의 개발 버전은 이제 <https://moderndive.netlify.com/>에서 볼 수 있습니다. travis-ci + netlify를 통해 배포됩니다.
- 각 장의 상단에 넓은 ModernDive 로고와 `logos` 폴더를 추가했습니다.
- 파비콘(브라우저 탭의 아이콘)을 추가했습니다.
- GitHub 저장소를 <https://github.com/ismayc/moderndiver-book/>에서 <https://github.com/moderndive/moderndive_book>으로 이동했습니다.

***

# ModernDive 0.2.0

## 내용 변경 사항

* 인지 심리학자이자 [The Learning Scientists](http://www.learningscientists.org/yana-weinstein/)의 공동 설립자인 Yana Weinstein 교수와의 상담 피드백을 반영했습니다.
* 장 구성 재조정/개편
    + **제1장: 서론**
        + 학생들을 대상으로 한 친근한 소개가 가장 먼저 보입니다. 그 다음 강사를 위한 소개, 연결/기여 방법, 기술적인 세부 사항이 이어집니다.
        + 이전에 ModernDive를 사용했던 두 과정의 학생 프로젝트 예제 링크를 추가했습니다:
            + Middlebury College [MATH 116 통계 및 데이터 과학 입문](https://rudeboybert.github.io/MATH116/PS/final_project/final_project_outline.html#past_examples) - 학생이 직접 수집한 데이터 사용.
            + Pacific University [SOC 301 사회 통계](https://ismayc.github.io/soc301_s2017/group-projects/index.html) - [fivethirtyeight R 패키지](https://cran.r-project.org/web/packages/fivethirtyeight/vignettes/fivethirtyeight.html)의 데이터 사용.
    + **제2장: 시작하기** 새로운 R 사용자/코더를 위한 새 장 추가:
        + R vs RStudio 및 두 가지 모두를 설치하는 방법에 대한 논의 (지원 비디오 포함)
        + 콘솔, 데이터 유형, 벡터, 팩터, 데이터 프레임, 불리언 연산자, 함수 등을 다루는 [DataCamp.com](https://www.datacamp.com/) 과정 링크가 포함된 "R에서 어떻게 코딩하나요?" 섹션
        + R 패키지에 대한 철저한 논의
        + 콘솔, `View()`, `glimpse()` 등을 사용하여 `nycflights13` 패키지의 데이터 프레임을 분석하는 엔드 투 엔드 스타터 예제.
    + **제3장: `ggplot2`를 이용한 데이터 시각화**가 이제 첫 번째 비입문 장입니다.
        + 그래픽 문법(Grammar of Graphics)의 입문 사례로 Menard의 "나폴레옹의 모스크바 행진"을 한스 로슬링(RIP)의 "Gapminder" 플롯으로 대체했습니다.
        + `geom_bar(stat="identity")`를 사용하는 대신 데이터가 미리 집계되어 있을 때 막대 그래프를 만들기 위한 `geom_col()`을 추가했습니다.
    + **제4장: `tidyr`을 이용한 Tidy 데이터**가 뒤로 밀렸습니다. 와이드 포맷에서 롱/tidy 포맷으로 변환하고 CSV를 가져오는 섹션이 추가되었습니다.
    + **제5장: `dplyr`을 이용한 데이터 ~~조작~~ 전처리**
    + **제6장: `broom`을 이용한 회귀 기반 데이터 모델링** 교육적 중요성을 고려하여 책의 뒷부분에서 여기로 앞당겨졌으며, 예측 프레임워크에서 회귀를 보는 것에 대한 노트를 추가했습니다.
    + **제7-9장: 표집, 가설 검정, 신뢰 구간** 현재는 거의 변경되지 않았습니다. 아래의 보류 중인 변경 사항 섹션을 참조하십시오.

## 기술적 변경 사항

* 책은 이제 [ModernDive.com](https://moderndive.com/)에서 호스팅됩니다.
* 개발 버전은 이제 이전 ModernDive 사이트 [https://ismayc.github.io/moderndiver-book/](https://ismayc.github.io/moderndiver-book/)에 있습니다.
* 제1장에 모든 이전 버전의 ModernDive 디지털 사본 및 소스 코드 링크를 추가했습니다.
* 책의 빌드/컴파일 시간을 ~20분에서 ~1분으로 단축했습니다.
* gitbook PDF 출력을 비활성화했습니다.

## 다음 버전을 위한 보류 중인 변경 사항

* **제6장: `broom`을 이용한 회귀 기반 데이터 모델링**
    + 현재 장에 존재하는 것보다 실험 설계 및 그것이 편향/인과관계에 미치는 영향에 대해 더 잘 다룹니다.
    + 범주형 예측 변수의 수준이 3개 이상인 회귀 예제.
    + 다변량 회귀, 특히 다음 예측 변수 시나리오: 수치형 2개, 범주형 2개, 수치형 1개 + 범주형 1개
    + 상호작용 효과
* **제7-9장: 표집, 가설 검정, 신뢰 구간**은 [`infer`: 통계적 추론을 위한 tidyverse 친화적 R 패키지](https://github.com/andrewpbray/infer)의 개발을 기다리는 중이라 크게 업데이트되지 않았습니다.

***

# ModernDive 0.1.3

* [여기](https://github.com/moderndive/moderndive_book/issues/2)에서 언급된 게시된 사이트에서 그림 6.2의 Shiny 앱이 하얀 박스로 나타나는 문제 수정을 시도했습니다.
    * 대신 링크가 있는 스크린샷을 사용하는 것으로 복원했습니다.
* `dplyr` [치트시트](https://github.com/rstudio/cheatsheets/raw/master/source/pdfs/data-transformation-cheatsheet.pdf) 및 `ggplot2` [치트시트](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf) 링크를 업데이트했습니다.
* 제3장과 4장의 끝에 복습 질문으로 DataCamp 장을 추가하기 시작했습니다 (더 추가될 예정).
* MailChimp 링크를 업데이트했습니다.
* 제3장 학습 체크 중 일부 문구를 수정했습니다.

***

# ModernDive 0.1.2

* index.Rmd의 'last updated'를 R 청크 대신 인라인으로 변환했습니다.
* 수정 링크가 moderndive-source 저장소 대신 moderndive-book GitHub 저장소를 가리키도록 수정했습니다.
* 제4-9장 끝에 있는 스크립트 파일로 가는 깨진 링크를 수정했습니다.
* 독자에게 유용한 코드가 포함되지 않은 청크에 `purl=FALSE`를 추가했습니다.
* [여기](https://github.com/moderndive/moderndive_book/issues/2)에서 언급된 게시된 사이트에서 그림 6.2의 Shiny 앱이 하얀 박스로 나타나는 문제 수정을 시도했습니다.

***

# ModernDive 0.1.1

* 장 이름에서 백틱을 제거하여 장 교차 참조가 작동하지 않던 문제를 수정했습니다.
    + `bookdown` [여기](https://github.com/rstudio/bookdown/issues/294)에 이슈 생성됨.
* 모든 장에서 오타를 찾아 수정했습니다.
* 제4장과 부록 B에 coggle 다이어그램을 추가했습니다.
* 각 장의 끝에 결론 섹션을 두는 것과 동일한 형식을 따랐습니다.
* 제7장의 히스토그램으로 $T$ 분포 플롯을 수정했습니다.
    + `cache = TRUE`로 인해 값을 올바른 스케일의 1/10로 잘못 플로팅한 이상한 문제였을 수 있습니다.
    + 앞으로 계속 주시해야 할 것입니다.
    + Reach for the Stars 장 이름의 오타를 수정했습니다.

***

# ModernDive 0.1.0

* 빛이 있으라(Fiat Lux)!
* 기본적인 장 구조 마련
* II 추론 섹션(제6-9장)의 첫 번째 패스 완료
* I 데이터 탐색 섹션(제3-5장)의 첫 번째 수정 거의 완료
