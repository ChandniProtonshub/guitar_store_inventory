class CreateStraps < ActiveRecord::Migration[5.2]
  def change
    create_table :straps do |t|
      t.references :guitar, foreign_key: true
      t.references :user, foreign_key: true
      t.string :size
      t.integer :in_stock_quantity

      t.timestamps
    end
  end
end
