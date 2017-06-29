class CreateProductColors < ActiveRecord::Migration[5.1]
  def up
    create_table :product_colors do |t|
      t.belongs_to :product, index: true
      t.belongs_to :color, index: true
    end
  end

  def down
    drop_table :product_colors
  end
end
