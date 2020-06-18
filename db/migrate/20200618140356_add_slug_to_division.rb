class AddSlugToDivision < ActiveRecord::Migration[5.2]
  def change
    add_column :divisions, :slug, :string
    add_index :divisions, :slug, unique: true
  end
end
