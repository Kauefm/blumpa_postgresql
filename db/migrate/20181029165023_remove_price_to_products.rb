class RemovePriceToProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :price, :float
    remove_column :products, :price_cents, :integer
  end
end
