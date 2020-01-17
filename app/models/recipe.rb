class Recipe < ApplicationRecord
belongs_to :dish
has_one :image,  dependent: :destroy
mount_uploader :image, ImageUploader
end
