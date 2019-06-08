class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.decimal :original_value
      t.decimal :open_value
      t.integer :pay_date
      t.string :comments
      t.string :account_type

      t.timestamps
    end
  end
end
