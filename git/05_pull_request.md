# Pull Request
<p>Git을 이용한 협업을 할 때, 브랜치를 파서 작업을 진행한 후 Pull Request를 생성해 팀원들의 코드 리뷰와 검증을 받고 develop 브랜치에 Merge를 진행한다.</p>

## Pull Request 과정
### 1: 새로운 branch를 생성해서 작업을 진행한다.
![alt text](images/05_pull_request/pull_request_01.png)
issue라는 브랜치를 파서 작업을 진행한다.

### 2: Remote repository에 작업을 진행한 branch를 반영한다.
![alt text](images/05_pull_request/pull_request_02.png)

### 3: Pull Request를 생성하는 곳까지 들어간다.
![alt text](images/05_pull_request/pull_request_03.png)
![alt text](images/05_pull_request/pull_request_04.png)

### 4: Pull Request 메시지를 작성한다.
![alt text](images/05_pull_request/pull_request_05.png)

스크롤을 내려보면 Commit 목록을 확인할 수 있다.
![alt text](images/05_pull_request/pull_request_07.png)

### 5: Reviewers를 등록한다.

![alt text](images/05_pull_request/pull_request_06.png)

### 6: Pull Request를 생성한다.
![alt text](images/05_pull_request/pull_request_08.png)

### 7: Reviewer는 Pull Request에서 코드 리뷰를 수행할 수 있다.
![alt text](images/05_pull_request/pull_request_09.png)
![alt text](images/05_pull_request/pull_request_10.png)
![alt text](images/05_pull_request/pull_request_11.png)
![alt text](images/05_pull_request/pull_request_12.png)
![alt text](images/05_pull_request/pull_request_13.png)
![alt text](images/05_pull_request/pull_request_14.png)

### 8: Reviewer는 Pull Request를 승인(Approve)할 수 있다.
![alt text](images/05_pull_request/pull_request_15.png)

모든 Reviewer가 Pull Request를 승인해야 Merge가 이루어질 수 있도록 설정하는 것이 Good Practice이다.

- Comment: 단순 코드 리뷰
- Approve: Pull Request 승인
- Request changes: 코드를 다시 작성하도록 요청

### 9: 모든 Review가 Pull Request를 승인하면 Branch를 Merge할 수 있다.
![alt text](images/05_pull_request/pull_request_16.png)

Merge하면 Pull Request 상태가 다음과 같이 바뀐다.
![alt text](images/05_pull_request/pull_request_17.png)

이 Pull Request는 이제 닫힌 (Closed) 상태이며 이 Pull Request에 대한 작업은 끝이 난다.

![alt text](images/05_pull_request/pull_request_18.png)
Pull Request가 닫힌 모습

![alt text](images/05_pull_request/pull_request_19.png)
Pull Request가 main 브랜치에 반영된 모습

<p>일반적으로 Pull Request가 완료되면 해당 브랜치는 삭제한다.</p>