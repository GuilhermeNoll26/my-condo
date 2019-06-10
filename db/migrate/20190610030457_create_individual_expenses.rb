class CreateIndividualExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :individual_expenses do |t|
      t.string :description
      t.decimal :value
      t.references :apartament, foreign_key: true
      t.text :notes
      t.boolean :generate_charge

      t.timestamps
    end
  end
end
