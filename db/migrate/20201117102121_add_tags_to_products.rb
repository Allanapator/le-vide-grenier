class AddTagsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :tag, :string
  end
end
