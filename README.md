# DB 設計

## users table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|
|email|text|null: false, unique:true|
|avatar|||
- has_many :products
- has_many :reviews



## products table
|Column|Type|Options|
|------|----|-------|
|shop_name|string|null: false, index: true|
|ruby|string|null: false,|
|phone_number|integer|null: false,|
|address1|string|null: false,|
|address2|text|null: false,|
|address3|text|null: false,|
|genre|text|null: false,|
|image_url|text||
|catchphrase|text||
|detail|text||
- belongs_to :user
- has_many :reviews


## reviews table
|Column|Type|Options|
|------|----|-------|
|nickname|string|
|rate|integer||
|comment|text||
<!-- |user_id|references|foreign_key: true| -->
|product_id|integer|foreign_key: true|

- belongs_to :user
- belongs_to :product
