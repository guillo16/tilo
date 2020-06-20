class AddCapacityToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :capacity, :string
  end
end
