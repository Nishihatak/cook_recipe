class Dish < ApplicationRecord
belongs_to :user
has_many :recipes,  dependent: :destroy
accepts_nested_attributes_for :recipes
# has_many :images,dependent: :destroy
# has_many :ingredients,dependent: :destroy
# belongs_to :ingredients
mount_uploader :image, ImageUploader
# accepts_nested_attributes_for :recipes

# バリデーション

NOT_NULL_MESSAGE   = "入力してください"
NOT_SELECT_MESSAGE = "選択してください"

validates :title, presence: { message: NOT_NULL_MESSAGE }
validates :title, length: { maximum: 20, message: "20 文字以下で入力してください" }, allow_blank: true
validates :info, presence: { message: NOT_NULL_MESSAGE }
validates :info,  length: {maximum:300,message: "300 文字以下で入力してください" }, allow_blank: true
validates :image, presence: { message: NOT_NULL_MESSAGE }
validates :food, presence: { message: NOT_NULL_MESSAGE }
validates :food, length: {maximum:300,message: "300 文字以下で入力してください" }, allow_blank: true
validates :recipe,  presence: { message: NOT_NULL_MESSAGE }
validates :recipe,  length: {maximum:300,message: "300 文字以下で入力してください" }, allow_blank: true
validates :cooktime, presence: { message: NOT_NULL_MESSAGE }
validates :cooktime, format: {with: /\A[0-9]+\z/,message: "半数字で入力してください" }, allow_blank: true
validates :cooktime, length: {in: 1..3, message: "半数字で入力してください" }, allow_blank: true
end
