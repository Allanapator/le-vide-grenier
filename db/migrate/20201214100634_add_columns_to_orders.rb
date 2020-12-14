class AddColumnsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :state, :string
    add_monetize :orders, :amount, currency: { present: false }
    add_column :orders, :checkout_session_id, :string
    add_reference :orders, :product, null: false, foreign_key: true
  end
end
