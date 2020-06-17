class AddNewFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :vegan, :string
    add_column :products, :sugar, :string
  end
end
