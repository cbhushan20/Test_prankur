class CreateLoginUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :login_users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.string :name

      t.timestamps
    end
  end
end
