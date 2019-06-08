class CreateCondoAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :condo_accounts do |t|

      t.timestamps
    end
  end
end
