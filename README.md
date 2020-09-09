
## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| nickname        | string | null: false |
| email           | string | null: false |
|                 |        |unique: true |#重複を防ぐ
| password        | string | null: false |

--has_many :golves

##golevs テーブル

| Column          | Type      | Options          |
| --------------- | ------    | -----------      |
| title           | string    | null: false      |
| contents        | string    | null: false      |
| user            | references| foreign_key: true|

--belongs_to :user
--has_many :entries

##entriesテーブル

| Column          | Type       | Options           |
| --------------- | ------     | -----------       |
| message         | string     | null: false       |
| golf            | references | foreign_key: true |

--belongs_to :golf
