class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :name
      t.string :category
      t.integer :quantity
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
