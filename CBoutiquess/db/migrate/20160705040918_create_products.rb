class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :code_product
      t.string :brand_product
      t.string :size_product
      t.string :type_product
      t.text :description_product
      t.string :supplier_product
      t.string :price_product
      t.string :image_product
      t.string :status_product

      t.timestamps null: false
    end
  end
end
