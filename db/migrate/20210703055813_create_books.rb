class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :writer
      t.date :publish_on

      t.timestamps
    end
  end
end
