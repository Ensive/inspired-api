class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :sku, limit: 25
      t.string :title, limit: 50, null: false
      t.text :description
      t.string :image

      t.integer :in_stock, default: 1, null: false
      t.boolean :available, default: false, null: false
      t.boolean :new, default: true, null: false
      t.integer :discount, precision: 2, scale: 0, default: 0, null: false
      t.boolean :discount_available, default: false, null: false
      t.decimal :price, precision: 8, scale: 2, null: false

      t.timestamps
    end
  end
end
