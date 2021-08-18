

# テーブル設計

## userテーブル

| Column              | Type     | Options          |
|---------------------|----------|------------------|
| nickname            | string   | null: false      |
| email               | string   | null: false      |
| encrypted_password  | string   | null: false      |
| play_style_id       | integer  | null: false      |
| play_histry_id      | integer  | null: false      |
| bith_place_id       | integer  | null: false      |


### Association


-has_many: favorites
-has_many: golfs, through: :favorites
-has_many: reviews


## golfテーブル

| Column                  | Type      | Options           |
|-------------------------|-----------|-------------------|
| golf_course_name        | string    | null: false       |
| postal_code             | string    | null: false       |
| bith_place_id           | integer   | null: false       |
| municipalities          | string    | null: false       |
| address                 | string    | null: false       |
| golf_course_number_id   | integer   | null: false       |
| business_hours_id       | integer   | null: false       |
| play_environment_id     | integer   | null: false       |
| golf_course_difficult_id| integer   | null: false       |
| average_amount_id       | integer   | null: false       |
| travel_time_id          | integer   | null: false       |
| explanation             | integer   | null: false       |
| cart_information_id     | integer   | null: false       |
| user                    | reference | foreign_key: true |

### Association

has_many: reviews
has_many: favorites
has_many: users, through: :favorites


## favoriteテーブル

| Column                  | Type      | Options                         |
|-------------------------|-----------|---------------------------------|
| user_id                 | reference | null: false , foreign_key: true |
| golf_id                 | reference | null: false , foreign_key: true |


### Association

belongs_to: user
belongs_to: golf


## reviewテーブル

| Column                  | Type      | Options                         |
|-------------------------|-----------|---------------------------------|
| user_id                 | reference | null: false, foreign_key: true  |
| golf_id                 | reference | null: false, foreign_key: true  |
| play_style              | integer   |                                 |
| rate                    | float     |                                  
| content                 | integer   | null: false                     |


### Association

belongs_to: user
belongs_to: golf


