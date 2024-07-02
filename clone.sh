#!/bin/bash

base_url="https://example.com/gitlab/yasu"

# リポジトリの名前が列挙されたファイル
repo_list="repositories_test.txt"

clone_dir="./all"

# 各リポジトリ名に対して処理を実行
while read -r repo_name; do
  # 空行やコメント行はスキップ
  [[ -z "$repo_name" || "$repo_name" =~ ^# ]] && continue

  # リポジトリのURLを作成
  repo_url="$base_url/$repo_name.git"

  # リポジトリをクローン
  echo "======Cloning: $repo_url======"
  
  git clone "$repo_url" "$clone_dir/$repo_name"
  cd "$clone_dir/$repo_name"
  git fetch --all
  cd - 

done < "$repo_list"

echo "All repositories have been cloned and fetched."
