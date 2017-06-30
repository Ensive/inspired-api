class CreateProductSizes < ActiveRecord::Migration[5.1]
  def up
    create_table :product_sizes do |t|
      t.belongs_to :product, index: true
      t.belongs_to :size, index: true
    end
  end

  def down
    drop_table :product_sizes
  end
end
