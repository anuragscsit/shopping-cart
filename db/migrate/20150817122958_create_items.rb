class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :detail
      t.integer :price
      t.string :image
      t.references :category, index: true, foreign_key: true
      t.references :sub_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
