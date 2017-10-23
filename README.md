# DB 設計

## users table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|
|email|text|null: false, unique:true|
|avatar|||
- has_many :products
- has_many :products, through: :product_users
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
|detail|text||
- has_many :users
- has_many :users, through: :product_users
- has_many :reviews

## product_users table
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|product_id|integer||

- belongs_to :user
- belongs_to :product

## review table
|Column|Type|Options|
|------|----|-------|
|rate|integer||
|comment|text||
|user_id|references|foreign_key: true|
|product_id|references|foreign_key: true|

- belongs_to :user
- belongs_to :product
