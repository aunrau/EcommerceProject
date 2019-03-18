class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :product_name
      t.string :description
      t.decimal :price
      t.integer :quantity
      t.integer :prod_order_id

      t.timestamps
    end
  end
end
