# Logumi

## 概要
食べたグミ、オススメしたいグミを登録して共有できるアプリケーションです。

## バージョン
- Rails 5.2.4.3
- Ruby 2.5.1

## デプロイ情報
- Heroku URL  
https://logumi.herokuapp.com/  

- テストアカウント
   - メールアドレス：test@sample  
   - パスワード：000000

## DB設計

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|email|string|null: false|
|password|string|null: false|
|image|string|
|like|string|
|introducrion|text|
#### Association
- has_many :gummys
- has_many :commments

### gummiesテーブル
|Column|Type|Options|
|------|----|-------|
|product|text|null: false|
|content|text|
|image|string|
|user|references|null: false, foreign_key: true|
|maker|references|null: false, foreign_key: true|
#### Association
- belongs_to :user

### commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|
|user|references|null: false, foreign_key: true|
|gummy|references|null: false, foreign_key: true|
#### Association
- belongs_to :user
- belongs_to :gummy