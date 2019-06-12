class CreateCondoGenerations < ActiveRecord::Migration[5.2]
  def change
    create_table :condo_generations do |t|
      t.string :reference_month
      t.text :notes

      t.timestamps
    end
  end
end
