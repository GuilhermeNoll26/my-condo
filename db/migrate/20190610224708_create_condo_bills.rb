class CreateCondoBills < ActiveRecord::Migration[5.2]
  def change
    create_table :condo_bills do |t|
      t.string :reference_month
      t.references :apartament
      t.boolean :paid
      t.text :notes
      
      t.timestamps
    end
  end
end
