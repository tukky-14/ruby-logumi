# Gummi DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, index: true|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :gummys
- has_many :commments

## gummysテーブル
|Column|Type|Options|
|------|----|-------|
|product|text|null: false|
|content|text|
|maker|text|
|image|string|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|
|user|references|null: false, foreign_key: true|
|gummy|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :gummy