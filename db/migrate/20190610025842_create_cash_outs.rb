class CreateCashOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :cash_outs do |t|
      t.string :description
      t.decimal :value
      t.references :cashier, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
