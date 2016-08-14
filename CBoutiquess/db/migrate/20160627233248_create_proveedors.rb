class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :city
      t.string :neighborhood
      t.string :street_number
      t.string :product

      t.timestamps null: false
    end
    add_index :proveedors, :email
  end
end
