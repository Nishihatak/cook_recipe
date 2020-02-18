# アプリ名
## レシピ投稿アプリ　cook_recipe
### 




# 概要
スクールで学んだことを生かし、また行ったことのない実装も前衛的に挑戦し、オリジナルアプリを作成したため紹介します。
# アプリへの思い
現存のレシピサイトでは調理時間や栄養で検索を出来なサイトがあります。しかし、実際料理する際に時間や栄養を考え作りたい料理を探すことがあると思います。そんな時に栄養や時間で検索できればいいなと思いアプリを開発しております。
# アプリケーション情報
## 接続先情報
http://54.95.134.107/
### アカウント情報
||Eメール|パスワード|
|------|----|-------|
|ユーザー|aaaa@gmail.com|aaaa|

### 画面サンプル

# 開発状況
## 開発環境
- ruby/Ruby on Rails/haml/scss/javascript/MySQL/Github/AWS/VScode
## 機能一覧
- ログイン機能
- レシピの登録・編集機能
- carrierwaveによる画像の登録
# 動作確認方法
- Chromeの最新版を利用してアクセスしてください。
- ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。
# ER図
### 

* Database creation
## 1. users Table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|avator|string|

### Association
- has_many :dishes

## 2. dishes Table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|kostu|text|
|info|text|
|image|string|
|cooktime|integer|null: false|
|user_id|reference|null: false,foreign_key: true|

### Association
- belongs_to :users
