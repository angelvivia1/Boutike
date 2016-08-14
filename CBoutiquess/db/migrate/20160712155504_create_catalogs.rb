class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :image
      t.string :price
      t.text :description

      t.timestamps null: false
    end
  end
end
