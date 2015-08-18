class Item < ActiveRecord::Base
  belongs_to :sub_category, dependent: :destroy
  
  mount_uploader :image, ImageUploader

  validates :name,:price, presence: true

end
