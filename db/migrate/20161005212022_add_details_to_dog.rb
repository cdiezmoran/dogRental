class AddDetailsToDog < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :price, :decimal
  end
end
