class AddMethodToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :method, :string
  end
end
