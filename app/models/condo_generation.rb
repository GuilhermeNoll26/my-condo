class CondoGeneration < ApplicationRecord
    
    
    after_save do
        
        
        result_apartaments = ActiveRecord::Base.connection.exec_query("select id from apartaments;")
        
        sql_collective_entries = "select (sum(e.value) / (select count(*) from apartaments)) as collective_entries from entries e where e.apartament_id is null and e.reference_month = '" + self.reference_month + "';"
        
        result_collective_entries = ActiveRecord::Base.connection.exec_query(sql_collective_entries)
        
        collective_entries_value = 0.00
        
        result_collective_entries.each do |row|
          collective_entries_value = row['collective_entries'].to_d
        end
        
        result_apartaments.each do |row|
        
          c = CondoBill.new
          
          ap_id1 = row['id']
          
          c.apartament_id = ap_id1
          c.reference_month = self.reference_month
          c.notes = self.notes            
          c.destination_cashier_id = 1
          c.paid = false
          c.value = collective_entries_value.round(2)
          sql_individual_entries = "select e.apartament_id, sum(e.value) as individual_value from entries e where e.apartament_id= #{ap_id1.to_s} and e.reference_month = '#{self.reference_month}' group by e.apartament_id;"
          result_individual_entries = ActiveRecord::Base.connection.exec_query(sql_individual_entries)
        
            result_individual_entries.each do |row|
              
              individual_value = row['individual_value']
              ap_id2 = row['apartament_id']
              
              if (ap_id1 = ap_id2)
                total_value = (collective_entries_value.to_d + individual_value.to_d)
                c.value = total_value.round(2)
              end
              
            end
              c.save
          
        end

    end
    
    
end
