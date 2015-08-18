class SubCategory < ActiveRecord::Base
  belongs_to :category
  has_many :items, dependent: :destroy
  mount_uploader :image, ImageUploader
end
