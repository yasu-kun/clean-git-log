# clean-git-log

このコードはgitlabに最適化されています．

## clone.sh
このコードはrepositories.txtにあるレポジトリを全て指定のディレクトリへcloneします．

## ch_log.sh
クローンした全てのレポジトリのすべてのブランチにあるgitログを編集する．

このコードは以下が必要です．

```
pip3 install git-filter-repo
```

## mailmap
例として，git logのcommitしたアカウントのメールアドレスを書き換える．
メールアドレスは<>を書く必要がある
参考：https://zenn.dev/hideoka/articles/1cda51b9cdfdd8
