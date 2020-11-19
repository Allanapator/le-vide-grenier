class AddColumnsToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :price, :decimal
    add_column :carts, :products_counter, :integer
  end
end
