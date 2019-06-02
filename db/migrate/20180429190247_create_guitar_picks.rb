class CreateGuitarPicks < ActiveRecord::Migration[5.2]
  def change
    create_table :guitar_picks do |t|
      t.references :guitar, foreign_key: true
      t.integer :for_guitar_type
      t.references :user, foreign_key: true
      t.integer :in_stock_quantity

      t.timestamps
    end
  end
end
