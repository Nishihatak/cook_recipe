class Image < ApplicationRecord
  has_many :recipes, through: :recipe_images
end
