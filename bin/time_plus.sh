#!/bin/bash

if [ $# -ne 1 ] ; then
    echo "Usage: $0 <초>"
    echo "  ex) $0 10"
    exit 1
fi
plus_sec=${1}

# 현재 시간 가져오기 (초 단위)
current_epoch=$(date +%s)

# 10초 추가
new_epoch=$((current_epoch + ${plus_sec}))

# 새 시간 포맷팅 (date 명령어로 변환)
new_time=$(date -d "@$new_epoch" "+%m%d%H%M%Y.%S")

# 시간 설정
echo "현재 시간            : $(date)"
echo "10초 후로 설정할 시간: $(date -d "@$new_epoch")"
echo "[*] 시스템 시간을 변경합니다..."
date $new_time >/dev/null 2>&1

# 변경 후 시간 출력
echo "변경된 현재 시간     : $(date)"
