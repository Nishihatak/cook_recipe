# アプリ名
## レシピ投稿アプリ　cook_recipe
### 
<img width="1403" alt="スクリーンショット 2020-02-18 19 40 07" src="https://user-images.githubusercontent.com/55939778/74728639-82191a80-5286-11ea-8fd8-e48c64cf2801.png">

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
# 開発状況
## 開発環境
- ruby/Ruby on Rails/haml/scss/javascript/MySQL/Github/AWS/VScode
## 機能一覧
- ログイン機能
- レシピの登録・編集機能
- carrierwaveによる画像の登録
### 各機能について
- ログイン機能
メールアドレス、ニックネーム、アバター用の写真、パスワードを入力していただけるとユーザー登録出来ます。
- レシピの投稿機能
料理名、料理の情報、写真、材料、作り方、調理時間を入力していただけるとレシピ登録出来ます。
![screencapture-localhost-3000-recipes-new-2020-02-18-19_47_33](https://user-images.githubusercontent.com/55939778/74729312-9873a600-5287-11ea-8e90-804b5c2097ad.png)
- レシピの編集・削除
レシピを投稿したユーザーのみレシピの編集が出来ます
<img width="966" alt="スクリーンショット 2020-02-18 19 50 57" src="https://user-images.githubusercontent.com/55939778/74729581-04560e80-5288-11ea-8e03-a43ef2275f11.png">

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
