class CreateCashiers < ActiveRecord::Migration[5.2]
  def change
    create_table :cashiers do |t|
      t.string :description
      t.decimal :balance

      t.timestamps
    end
  end
end
