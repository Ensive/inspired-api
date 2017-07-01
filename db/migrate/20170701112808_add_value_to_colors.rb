class AddValueToColors < ActiveRecord::Migration[5.1]
  def change
    add_column :colors, :value, :string
  end
end
