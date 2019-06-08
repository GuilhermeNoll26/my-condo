class CreateApartaments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartaments do |t|
      t.integer :number
      t.string :ocupation_status
      t.text :notes
      t.timestamps
      
      t.references :person_tenant
      t.references :person_owner
      
    end
  end
end
