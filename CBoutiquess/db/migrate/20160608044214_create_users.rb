class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :token_digest

      t.timestamps null: false
    end
    add_index :users, :email
  end
end