class CondoGeneration < ApplicationRecord
    
    
    after_save do
        
        
        result_apartaments = ActiveRecord::Base.connection.exec_query("select id from apartaments;")
        
        sql_collective_entries = "select (sum(e.value) / (select count(*) from apartaments)) as collective_entries from entries e where e.apartament_id is null and e.reference_month = '" + self.reference_month + "';"
        
        result_collective_entries = ActiveRecord::Base.connection.exec_query(sql_collective_entries)
        
        collective_entries_value = 0.00
        
        result_collective_entries.each do |row|
          collective_entries_value = row['collective_entries']
        end
        
        #################################################
        
        
        sql_individual_entries = "select e.apartament_id, sum(e.value) as individual_value from entries e where e.apartament_id != 0 and e.reference_month = '" + self.reference_month + "' group by e.apartament_id;"
        
        
        
        result_individual_entries = ActiveRecord::Base.connection.exec_query(sql_individual_entries)
        
        
        result_apartaments.each do |row|
        
          c = CondoBill.new
          
          ap_id1 = row['id']
          
          c.apartament_id = ap_id1
          c.reference_month = self.reference_month
          c.notes = self.notes            
          c.destination_cashier_id = 1
          c.paid = false
          
          puts "PRIMEIRO FORRRRRRRRRRRRRRRRR #{ap_id1}"
            
            result_individual_entries.each do |row|
                
              ap_id2 = row['apartament_id']
            
              individual_value = row['individual_value']
              puts "SEGUNDOOOOOOOO FORRRRRRRRRRRRRRRRR #{ap_id2} e #{individual_value}"  
              if ap_id1 == ap_id2
            
                c.value = (collective_entries_value + individual_value).to_d
                puts "PRIMEIRO IFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
              else
                c.value = collective_entries_value.to_d
                puts "aquiiiiiiiiiiiiiiii ELSEEEEEEEEEEEEEEEEEEEE"
              end
            
            end
            
              c.save
          
        end
        
        collective_entries_value = 0.0
        
    end
    
    
end
