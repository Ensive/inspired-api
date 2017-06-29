class AddMaterialToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :material, :string
  end
end
