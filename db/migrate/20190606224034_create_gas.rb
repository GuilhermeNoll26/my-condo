class CreateGas < ActiveRecord::Migration[5.2]
  def change
    create_table :gas do |t|
      t.string :gas_clock
      t.date :reading_date
      t.text :comments

      t.timestamps
    end
  end
end
