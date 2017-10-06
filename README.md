README
====
随時更新中。
# githubのルール
* mergeはかとーがします
* 機能が完成しmasterブランチにmergeしたいときはプルリク（pull request）を作成してください
* コードレビューして欲しいときもプルリクを送ってください

# 開発にあたってのTIPS
開発時に知っておくと便利なことを書いておきます。

## development環境でサーバー起動
`rails s -p $PORT -b $IP`  
これでdevelopment環境のログも確認できる。

## herokuのログが見たい
`heroku logs --tail`

## 頻繁にconflictが発生するファイル
頻繁にconflictするファイルの解消方法。
```
# schema.rb
git checkout --theirs db/schema.rb
rails db:migrate
git add db/schema.rb
```
## デバッグの方法
pry-byebagというgemを入れてます。使い方はこの辺りを参照。
<http://ruby-rails.hatenadiary.com/entry/20141024/1414081224>