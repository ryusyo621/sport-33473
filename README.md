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
<!-- メインスポーツ→趣味（複数選択可）を実装予定 -->

has_many :sports

## sports テーブル

| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| sport_name   | string     | null: false       |
| sport_text   | text       | null: false       |
| category_id  | integer    | null: false       |
| state_id     | integer    | null: false       |
|              | integer    | null: false       |
| area_id      | integer    | null: false       |
|              | integer    | null: false       |
| price        | integer    | null: false       |
| user         | references | foreign_key: true |

belongs_to :user 
has_one :purchase

## purchases テーブル

| Column    | Type       | Options           |
| --------- | ---------- | ----------------- |
| user      | references | foreign_key: true |
| sport      | references | foreign_key: true |

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