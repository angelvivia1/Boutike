class AddProRfcToProveedor < ActiveRecord::Migration
  def change
    add_column :proveedors, :pro_rfc, :string
  end
end
