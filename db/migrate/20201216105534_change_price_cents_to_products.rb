class ChangePriceCentsToProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price_cents, :integer
  end
end
