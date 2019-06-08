class CreateCashes < ActiveRecord::Migration[5.2]
  def change
    create_table :cashes do |t|
      t.decimal :balance
      t.string :description

      t.timestamps
    end
  end
end
