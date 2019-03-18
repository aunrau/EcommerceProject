class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.numeric :phone
      t.string :order_history
      t.integer :order_id

      t.timestamps
    end
  end
end
