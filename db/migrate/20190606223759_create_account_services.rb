class CreateAccountServices < ActiveRecord::Migration[5.2]
  def change
    create_table :account_services do |t|
      t.string :collect_type
      t.integer :pay_date
      t.decimal :value
      t.text :comments

      t.timestamps
    end
  end
end
