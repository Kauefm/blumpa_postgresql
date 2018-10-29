class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :description
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
