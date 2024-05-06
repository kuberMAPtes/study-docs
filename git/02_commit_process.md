# 커밋 과정
## [1] ```git add```
- <p>커밋할 수정 사항을 Staging Area에 올린다.</p>
- 문법
  - ```git add [Staging area에 올릴 파일 이름]```
  - Example
    - ```git add src/main/java/com/a/Main.java```
    - ```git add .```: 모든 수정사항을 한꺼번에 staging area에 올릴 경우
  - Staging Area에 올라간 파일들은 Git에 의해 추적(track)되는 파일이다.
## [2] ```git commit```
- Staging Area에 있는 변경사항들을 반영하여 Snapshop을 만든다.
- 소스코드 히스토리(버전)는 Commit을 기준으로 관리된다.
- 문법
  - ```git commit```: Staging area에 있는 변경사항들이 커밋됨
  - ```git commit -m "[커밋 메시지]"```: 커밋 메시지와 함께 변경사항들을 커밋한다.
  - ```-m``` 옵션 없이 커밋할 경우, 기본 커밋 메시지 에디터로 지정된 에디터에서 커밋 메시지를 작성하게 된다.
  - 웬만한 경우 ```-m``` 옵션 없이 커밋 메시지를 제대로 작성한다.
## [3] ```git push```
- 로컬 레포지토리의 커밋을 원격(remote) 레포지토리에 반영한다.
- 문법
  - ```git push [원격 레포지토리] [반영할 브랜치]```
  - Example
    - ```git push origin main```
    - ```git push origin feature/button```
  - 원격 레포지토리에 로컬 레포지토리 반영되지 않은 변경사항이 있을 경우, push가 되지 않는다.
    - 이 경우, 원격 레포지토리의 변경사항을 ```pull``` 해야 한다.
## [4] Pull Request
<p>변경사항을 원격 레포지토리에 반영했으면 작업한 브랜치를 main 브랜치 (develop과 같은 이름을 가진 브랜치를 따로 두고 여기에 작업 사항을 합치기도 한다)에 병합(merge)해야 한다. 이를 위해 원격 레포지토리에 Pull Request를 작성하고 팀원들에게 승인을 요청한다.</p>
<p>팀원들이 코드 리뷰를 마치고 main 브랜치에 작업물을 병합하면 Pull Request는 close된다. 일반적인 경우, Pull Request를 마친 브랜치는 삭제한다.</p>