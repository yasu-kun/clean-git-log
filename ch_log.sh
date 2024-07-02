#!/bin/bash

#すべてのレポジトリのすべてのブランチのlogを確認する

repos_dir="./all"

for dir in "$repos_dir"/*/; do
	echo "=====$dir====="
	cd $dir

	# 最後のスラッシュを取り除く
	path=${dir%/}

	# 最後のスラッシュ以降の部分を取り出す
	dirname=${path##*/}

	git filter-repo -f --mailmap /path/to/mailmap
	git remote add origin https://example.com/gitlab/yasu/$dirname
	git push -f origin --all

	cd -
done

