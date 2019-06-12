class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :description
      t.decimal :value
      t.string :reference_month
      t.date :due_date
      t.references :apartament, foreign_key: true
      t.references :cashier, foreign_key: true
      t.text :notes
      t.boolean :paid
      t.timestamps
    end
  end
end

  