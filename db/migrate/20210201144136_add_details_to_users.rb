class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address, :string
    add_column :users, :postal, :integer
    add_column :users, :phone, :integer
    add_column :users, :birthday, :date
  end
end
