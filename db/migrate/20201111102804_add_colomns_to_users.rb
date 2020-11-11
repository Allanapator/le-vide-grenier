class AddColomnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :job, :string
    add_column :users, :city, :string
    add_column :users, :sexe, :integer
    add_column :users, :age, :integer
  end
end
