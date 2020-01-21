class Image < ApplicationRecord
  belongs_to :dishes,dependent: :destroy
  belongs_to :recipes,dependent: :destroy

  mount_uploader :image, ImageUploader

end
