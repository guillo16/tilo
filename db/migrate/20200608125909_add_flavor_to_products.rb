class AddFlavorToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :flavor, :string
  end
end
