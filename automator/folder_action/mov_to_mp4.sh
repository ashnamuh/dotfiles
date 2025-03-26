#!/bin/bash

folder="$1"

for file in "$folder"/*; do
  # 파일인지 확인
  if [[ -f "$file" ]]; then
    # 파일 확장자 확인
    ext="${file##*.}"

    # 확장자가 .mov이거나 확장자가 없는 파일만 처리
    if [[ "$ext" == "mov" || "$file" == "${file%.*}" ]]; then
      output="${file%.*}.mp4"

      # ffmpeg로 변환
      /opt/homebrew/bin/ffmpeg -i "$file" -c:v libx264 -c:a aac -strict experimental "$output"

      # 변환 완료 후 원본 파일 삭제 (선택 사항)
      rm "$file"
    fi
  fi
done