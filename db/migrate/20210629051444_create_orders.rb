class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_id
      t.string :customer_name
      t.string :city

      t.timestamps
    end
  end
end
