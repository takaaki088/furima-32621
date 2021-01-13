# テーブル設計

## usersテーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| last_name_kana     | string  | null: false |
| first_name_kana    | string  | null: false |
| birth_date         | date    | null: false |

### Association

- has_many :items
- has_many :purchase_history

## itemsテーブル
| Column                 | Type    | Options           |
| ---------------------- | ------- | ----------------- |
| name                   | string  | null: false       |
| category_id            | integer | null: false       |
| sales_status_id        | integer | null: false       |
| shipping_fee_status_id | integer | null: false       |
| prefecture_id          | integer | null: false       |
| scheduled_delivery_id  | integer | null: false       |
| price                  | integer | null: false       |
| user_id                | integer | foreign_key: true |
| description of item    | string  | null: false       |

### Association

- belongs_to :user
- has_one :purchase_history

## purchase_historyテーブル
| Column  | Type    | Options           |
| ------- | ------- | ----------------- |
| user_id | integer | foreign_key: true |
| item_id | integer | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :items
- has_one :charges

## chargesテーブル
| Column              | Type    | Options           |
| ------------------- | --------| ----------------- |
| postal_code         | string  | null :false       |
| prefecture_id       | integer | null :false       |
| city                | string  | null :false       |
| addresses           | string  | null :false       |
| building            | string  |                   |
| phone_number        | string  | null :false       |
| purchase_history_id | integer | foreign_key: true |

### Association

- belongs_to :purchase_history
