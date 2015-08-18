class AddImageToSubCategory < ActiveRecord::Migration
  def change
    add_column :sub_categories, :image, :string
  end
end
