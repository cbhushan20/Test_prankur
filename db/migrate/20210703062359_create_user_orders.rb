class CreateUserOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :user_orders do |t|
      t.string :user_order_id
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
