class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :neighborhood
      t.string :street_number
      t.string :email
      t.integer :age
      t.string :celphone
      t.date :date_hire

      t.timestamps null: false
    end
    add_index :employees, :email
  end
end
