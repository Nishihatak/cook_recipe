class RecipeImage < ApplicationRecord
  belongs_to :images
  belongs_to :recipes
end
