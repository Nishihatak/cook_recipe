class Dish < ApplicationRecord
belongs_to :user
has_many :recipes,  dependent: :destroy
has_many :images, through: :recipes, dependent: :destroy
# has_many :images,dependent: :destroy
# has_many :ingredients,dependent: :destroy
# belongs_to :ingredients
mount_uploader :image, ImageUploader
# accepts_nested_attributes_for :recipes
end
