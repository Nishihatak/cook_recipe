# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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
|cooktime|integer|null: false|
|user_id|reference|null: false,foreign_key: true|

### Association
- belongs_to :users
- has_many :recipes,dependent: :destroy
- has_many :images,dependent: :destroy
- has_many :ingredients,dependent: :destroy
- belongs_to :ingredients

## 3. ingredients Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|

### Association
- has_many :dish
- has_ancestry

## 4. recipes Table
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|dishes_id|reference|null: false,foreign_key: true|
|imaages_id|reference|null: false,foreign_key: true|

### Association
- belongs_to :dishes
- has_many :images, through: :recipe_images

## 5. images Table
|Column|Type|Options|
|------|----|-------|
|images|string|
|dishes_id|reference|null: false,foreign_key: true|
|recipes_id|reference|null: false,foreign_key: true|

### Association
- belongs_to :dishes
- has_many :recipes, through: :recipe_images

## 6. recipes_images Table
Column|Type|Options|
|------|----|-------|
|dishes_id|reference|null: false,foreign_key: true|
|recipes_id|reference|null: false,foreign_key: true|

### Association
- belongs_to :images
- belomgs_to :recipes