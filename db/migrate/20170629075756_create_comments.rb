class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :product, foreign_key: true
      t.string :author, default: 'Anonymous', null: false
      t.string :author_email, default: nil
      t.string :author_ip, default: nil
      t.text :body, null: false
      t.integer :stars, default: 0, limit: 5
      t.boolean :approved, default: false, null: false
      t.integer :rank, default: 0, null: false
      t.string :ancestry

      t.timestamps
    end

    add_index :comments, :ancestry
  end
end
