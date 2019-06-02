class CreateGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :model
      t.integer :guitar_type
      t.integer :number_of_strings
      t.decimal :price
      t.string :serial_number, unique: true, null: false
      t.date :date_purchased
      t.date :date_sold
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
