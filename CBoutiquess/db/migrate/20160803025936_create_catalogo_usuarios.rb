class CreateCatalogoUsuarios < ActiveRecord::Migration
  def change
    create_table :catalogo_usuarios do |t|
      t.string :tipo

      t.timestamps null: false
    end
  end
end
