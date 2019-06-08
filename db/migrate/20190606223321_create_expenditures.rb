class CreateExpenditures < ActiveRecord::Migration[5.2]
  def change
    create_table :expenditures do |t|
      t.string :expenditure_type
      t.decimal :value
      t.string :comments

      t.timestamps
    end
  end
end
