# テーブル設計

## users テーブル

| Column             | Type   | Options          |
| ------------------ | ------ | ---------------- |
| nickname           | string | null: false      |
| email              | string | uniqueness: true |
| phone_number       | string | uniqueness: true |
| password_encrypted | string | null: false      |
| last_name          | string | null: false      |
| first_name         | string | null: false      |
| kana_last_name     | string | null: false      |
| kana_first_name    | string | null: false      |
| birthday           | date   | null: false      |
| main_sport         | string | null: false      |
<!-- ニックネーム
Eメール
電話番号
パスワード
名字
名前
名字（フリガナ）
名前（フリガナ）
誕生日
お気に入りジャンル
has_many :sports -->

## sports テーブル

| Column           | Type       | Options           |
| ---------------- | ---------- | ----------------- |
| title            | string     | null: false       |
| sport_text       | text       | null: false       |
| category_id      | integer    | null: false       |
| area_id          | integer    | null: false       |
| price_pattern_id | integer    | null: false       |
| price            | integer    | null: false       |
| user             | references | foreign_key: true |
<!-- 画像 -->
<!-- タイトル -->
<!-- 活動内容 -->
<!-- カテゴリー -->
<!-- 活動地域 -->
<!-- 参加費 -->
<!-- 参加費 -->


belongs_to :user 
has_one :purchase

## messages テーブル

| Column    | Type       | Options           |
| --------- | ---------- | ----------------- |
| message   | string     | null:false |
| user      | references | foreign_key: true |
| sport     | references | foreign_key: true |

belongs_to :user 
belongs_to :item 
has_one :delivery
<!-- 
## deliveries テーブル
| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| post_number   | string     | null: false       |
| area_id       | integer    | null: false       |
| city          | string     | null: false       |
| address       | string     | null: false       |
| building      | string     |                   |
| phone_number  | string     | null: false       |
| purchase      | references | foreign_key: true |

belongs_to :purchase -->