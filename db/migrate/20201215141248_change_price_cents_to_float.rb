class ChangePriceCentsToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price_cents, :float
  end
end
