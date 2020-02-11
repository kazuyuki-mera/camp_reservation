# キャンプ予約(camp_reservation) DB設計

## 商品(products)テーブル
|Column|Type|Options|
|------|----|-------|
|description|text|null: false|
|room_id|reference|foreign_key: true, null: false|
### Association
- belongs_to :room
- belongs_to :reservation
- has_many :images
- has_many :product_categories
- has_many :product_facilities
- has_many :product_features
- has_many :categories, through: :product_categories
- has_many :facilities, through: :product_facilities
- has_many :features,   through: :product_features

## 商品・カテゴリ(product_categories)テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|reference|foreign_key: true, null: false|
|category_id|reference|foreign_key: true, null: false|
### Association
- belongs_to :product
- belongs_to :category

## 商品・設備/アメニティ(product_facilities)テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|reference|foreign_key: true, null: false|
|facility_id|reference|foreign_key: true, null: false|
### Association
- belongs_to :product
- belongs_to :facility

## 商品・部屋特徴(product_features)テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|reference|foreign_key: true, null: false|
|feature_id|reference|foreign_key: true, null: false|
### Association
- belongs_to :product
- belongs_to :feature

## 画像(images)テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|reference|foreign_key: true, null: false|
|url|string|null: false|
### Association
- belongs_to :product

## カテゴリ(categories)テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
### Association
- has_many :product_categories
- has_many :products, through: :product_categories

## 設備/アメニティ(facilities)テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
### Association
- has_many :product_facilities
- has_many :products, through: :product_facilities

## 部屋特徴(featurers)テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
### Association
- has_many :product_features
- has_many :products, through: :product_features

## 客室(rooms)テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|workday_price|integer|null: false|
|holiday_price|integer|null: false|
|total_rooms|integer|null: false|
|least_count|integer|null: false|
|max_count|integer|null: false|
### Association
- belongs_to :product

## 予約(reservations)テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|reference|foreign_key: true, null: false|
|user_id|reference|foreign_key: true, null: false|
|check_in_date|date|null: false|
|check_out_date|date|null: false|
|check_in_plan_time|date|null: false|
|message|text||
### Association
- belongs_to :product
- belongs_to :user

## ユーザー(users)テーブル
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|email|string|null: false|
|phone_number|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|block|string||
|building_name|string||
### Association
- has_many :reservations

## お問い合わせ(contacts)テーブル
|Column|Type|Options|
|------|----|-------|
|full_name|string|null: false|
|email|string|null: false|
|phone_number|string|null: false|
|title|string|null: false|
|detail|text|null: false|


## 商品(products)
- 客室id
- 説明

## 商品画像(product_images)
- 画像url
- 商品id

## 商品・カテゴリ(product_categories)
- 商品id
- カテゴリid

## 商品・設備/アメニティ(product_equipments)
- 商品id
- カテゴリid

## 商品・部屋特徴(product_features)
- 商品id
- 部屋特徴id

## カテゴリ(categories)
- 名前（サイト・バンガロー・禁煙 etc）

## 設備/アメニティ(facilities)
- 名前（電話　ドライヤー　電子レンジ　洗浄機付トイレ etc）

## 部屋特徴(featurers)
- 特徴（ペットOK　洗浄機付トイレ etc）

## 客室(rooms)
- 名前
- 平日料金
- 休日料金
- 合計客室数
- 最少人数
- 最大人数

## 予約(reservations)
- チェックイン日
- チェックアウト日
- チェックイン予定時刻
- 連絡事項
- ユーザーid
- 商品id

## ユーザー(users)
- 姓
- 名
- 姓（カナ）
- 名（カナ）
- メールアドレス
- 電話番号
- 都道府県
- 市区町村
- 番地
- 建物名

## お問い合わせ(contacts)
- 氏名
- メールアドレス
- 電話番号
- タイトル
- 問い合わせ内容