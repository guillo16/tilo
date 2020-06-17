class AddFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand, :string
    add_column :products, :condition, :string
  end
end
