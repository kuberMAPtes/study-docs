#!/bin/bash

# 현재 날짜와 시간을 가져옵니다.
current_date=$(date +"%y_%m_%d_%H_%M")

# 최근 커밋 메시지를 가져옵니다.
last_commit_message=$(git log -1 --pretty=%B)

# 커밋 번호를 추출합니다. "1차" 또는 "2차"와 같은 형식을 가정합니다.
last_commit_number=$(echo "$last_commit_message" | grep -o '^[0-9]*차' | grep -o '^[0-9]*')

# 커밋 번호를 1 증가시킵니다.
if [ -z "$last_commit_number" ]; then
    commit_number=1
else
    commit_number=$((last_commit_number + 1))
fi

# 새로운 커밋 메시지를 만듭니다.
commit_message="${commit_number}차_${current_date}"

# Git 명령을 실행합니다.
git add .
git commit -m "$commit_message"
git push origin $(git rev-parse --abbrev-ref HEAD)

