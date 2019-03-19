class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :order_status
      t.decimal :order_total
      t.string :order_details

      t.timestamps
    end
  end
end
