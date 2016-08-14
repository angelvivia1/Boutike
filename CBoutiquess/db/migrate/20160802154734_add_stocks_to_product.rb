class AddStocksToProduct < ActiveRecord::Migration
  def change
    add_column :products, :stocks, :integer
  end
end
