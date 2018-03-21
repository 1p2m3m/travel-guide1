class Location < ApplicationRecord
  validates :title, presence: :true
  validates :subtitle, presence: :true
  mount_uploader :header_image, HeaderImageUploader
end
