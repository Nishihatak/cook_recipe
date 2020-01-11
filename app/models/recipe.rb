class Recipe < ApplicationRecord
belongs_to :dishes
has_many :images, through: :recipe_images
end
