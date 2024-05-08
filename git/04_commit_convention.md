# Commit Convention
<p>협업 프로젝트에서 Convention을 미리 정하고 이를 준수하는 일은 원활한 소통과 협업을 위해 필수불가결한 일이다. Convention을 미리 정해두면 팀원 간의 불필요한 소통을 줄여주고 명료한 정의 아래 협업을 수행할 수 있다.</p>
<p>프로그래밍에서 Convention은 한국어로 관습, 관례로 직역할 수 있고 규칙, 약속이라는 말로 의역할 수 있지만 딱 떨어지는 매우 적절한 번역어를 찾기 힘들다. 그러므로 Convention이라는 영어 어휘를 그대로 사용하겠다.</p>
<p>SCM (Source Control Management)에 대해서도 Convention을 정해야 한다. Git을 사용하는 팀 프로젝트에서는 Commit Convention을 정함으로써 명료하고 원활한 협업을 가능케 한다.</p>
<p>Convention은 팀마다 다르고, 프로젝트마다 다르다. 프로젝트마다 따로 Convention을 정해야 한다 (이전에 수행했던 프로젝트의 Convention을 그대로 사용할 수도 있다). Commit Convention 또한 회사마다, 팀마다, 프로젝트마다 다르기 때문에 표준 Convention이란 존재하지 않는다. 그러나 많은 프로젝트에서 채택되는 Convention이 존재한다. 이를 여기서 소개함으로써 차후 프로젝트를 진행함에 있어 Convention을 정할 때 참고가 될 수 있도록 한다.</p>

## Commit을 언제 수행해야 하는가
Commit을 수행하는 시점에 대해 팀마다, 프로젝트마다 다르며 심지어 같은 프로젝트를 수행하는 팀원들 사이에서도 다른 관점을 가질 수 있다.

- 하루에 한 번씩 Commit
- 일정 라인 이상 코딩을 하면 Commit (5줄 ~ 10줄 정도)
- 기능 하나 구현할 때마다 Commit
- 정해진 단위 Task를 수행할 때마다 Commit

<p>정답은 없다. 하지만 위의 두 방식은 의미 없는 Commit을 생산함으로써 커밋 히스토리를 더럽힐 가능성이 농후하다.</p>
<p>로그인 기능을 구현한다고 가정하자. 로그인 기능을 구현하는 과정을 여러 Task로 나눌 수 있을 것이다.</p>

- 로그인에 필요한 3rd party library 추가
- 로그인 정보를 저장하는 데이터베이스 접근 코드 작성
- 로그인 정보 검증 코드
- 로그인 요청을 받는 API 코드 작성
- 테스트 코드 작성
- 로그인 화면 구성
- 리팩토링

<p>그리고 각 Task도 서브 Task로 세분할 수 있을 것이다. 예를 들어 로그인 화면 구성 Task에 HTML 작성, CSS 디자인 등의 Task가 포함될 수 있다.</p>
<p>좋은 개발자는 Task를 적절히 작게 나누고 각 Task에 맞게 Commit을 수행한다. 이 점은 Commit Convention을 정할 때 생각해 볼 거리다.</p>

## Commit Message Convention
일반적으로 ```git commit``` 커맨드로 Commit을 진행할 때 ```-m``` 옵션을 사용하는 것은 좋지 않은 Practice이다. Commit Message는 타인이 읽었을 때 직접 코드를 읽지 않더라도 각 Commit에 어떤 작업이 이루어졌는지 알 수 있도록 명확하면서도 상세해야 한다 (물론 코드 리뷰는 꼭 수반되어야 한다).<br>

많은 채택을 받는 Commit Message Convention 형식이 존재한다. 이는 다음과 같다.

```
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```
- ```<type>```에는 다음과 같은 태그 중 하나가 들어올 수 있다.
  - ```feat```: 새로운 기능 등 새로운 Feature를 추가
  - ```fix```: 버그 수정
  - ```design```: UI 디자인
  - ```refactor```: Production Code 리팩토링 (새로운 기능 X)
  - ```docs```: 문서 수정
  - ```test```: 추가 테스트, 누락된 테스트
  - ```chore```: 빌드 업무 수정, 패키지 매니저 수정, 패키지 관리자 구성 등 업데이트 (Production Code 변경 X)
  - ```style```: 들여쓰기 변경 등 코드 포맷 변경 (코드 수정 X)
  - ```!HOTFIX```: 급하게 치명적인 버그 수정
- ```<scope>```에는 subject를 설명하는 추가적인 문맥을 지정한다.
  - 생략할 수 있다.
- ```<subject>```는 Commit Message의 제목이다. 50자 이내의 간결하고 명료한 문장으로 Commit을 묘사한다.
  - 첫 글자는 소문자로 작성한다. (영어일 경우)
  - 마침표(.) 및 특수기호를 사용하지 않는다.
  - 과거시제를 사용하지 않는다. (영어일 경우)
    - fixed bug (x)
    - fix bug (o)
- ```<body>```에서는 코드를 <b>왜 (motivation)</b> 변경했는지, <b>무엇</b>을 변경했는지 나타낸다.
  - 한 줄에 72자 이내로 작성한다.
  - 최대한 상세히 작성한다. (코드를 변경한 이유를 명확히 작성할수록 좋다)
- ```<footer>```에서는 issue tracker ID를 명시한다.
  - 생략할 수 있다.
  - ```<type>: #<issue ID>``` 형식으로 작성한다.
  - 이슈 트래커 type은 다음 중 하나를 사용한다.
    - Fixes: 이슈 수정 중 (아직 해결되지 않음)
    - Resolves: 이슈를 해결했을 때
    - Ref: 참고할 이슈가 있을 때
    - Related to: 해당 Commit에 관련된 Issue ID (아직 해결되지 않은 경우)

### Commit Message 예시
```
refactor: InventoryBackend 자식 클래스의 메소드 이름 수정

InventoryBackend를 상속받는 클래스가 기반 클래스의 인터페이스를 따르지 않음.

Cart가 잘못된 방식으로 백엔드 구현을 호출하고 있었기 때문에 문제가 없었음.
```

```
feat: serialize and deserialize credits to json in Cart

Convert the Credit instances to dict for two main reasons:

  - Pickle relies on file path for classes and we do not want to break up
    everything if a refactor is needed
  - Dict and built-in types are pickleable by default
```

### References
- [https://gist.github.com/stephenparish/9941e89d80e2bc58a153](https://gist.github.com/stephenparish/9941e89d80e2bc58a153)
- [https://velog.io/@archivvonjang/Git-Commit-Message-Convention](https://velog.io/@archivvonjang/Git-Commit-Message-Convention)
- [https://github.com/RomuloOliveira/commit-messages-guide/blob/master/README_ko-KR.md](https://github.com/RomuloOliveira/commit-messages-guide/blob/master/README_ko-KR.md)

## Branch Convention
Git에서 브랜치를 만들 때도 Convention이 필요하다.

### ```main``` branch와 ```develop``` branch
#### main 브랜치
main 브랜치는 배포 가능한 상태만 관리한다. Jenkins를 사용할 때를 떠올려 보면, Jenkins에서는 Git repository의 소스 코드를 가져와 빌드하고 배포한다. 이때 가져올 소스 코드는 배포 가능한 소스 코드여야 할 것이다. 이와 같이 배포할 소스 코드를 유지하는 브랜치가 필요한데, 일반적인 경우 main 브랜치에서 이를 유지한다.

#### develop 브랜치
develop 브랜치에서는 다음 버전의 프로덕션 코드를 개발할 때 사용한다. 개발 작업이 끝난 브랜치에서 Merge를 수행할 때, develop 브랜치에 Merge한다. 한 차례 개발이 끝나고 배포할 때 main 브랜치에 devleop 브랜치의 상태를 반영한다.

### 언제 브랜치를 만들 것인가
팀 프로젝트에서 새로운 Task를 수행할 때 따로 브랜치를 파서 거기서 작업을 한 후 develop 브랜치에 Merge한다. 일반적으로 바로 Merge를 수행하지 않고 Pull Request를 생성해서 코드 리뷰를 받고 Approve가 나면 Merge한다.

### Branch Naming Convention
브랜치의 이름이 명확해야 해당 브랜치에서 어떤 작업이 이루어지고 있는지 다른 팀원들이 알 수 있을 것이다. 이에 대한 Convention 또한 정해야 한다. 예시로 다음과 같은 방식을 생각할 수 있다.
```
<type>/<Task>
```
예시
- ```feature/login-system```
- ```fix/user-info-page```
- ```docs/api-endpoints```