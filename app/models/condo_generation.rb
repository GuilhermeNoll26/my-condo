class CondoGeneration < ApplicationRecord
    
    
    after_save do
        
        #sql1 = 'select number from apartaments'
        #tamanho_aptos = ActiveRecord::Base.connection.execute(sql1)
        
        
        sql = "SELECT * FROM apartaments"
        result = ActiveRecord::Base.connection.exec_query(sql)
        
        result.each do |row|
            puts row['number'].to_s + " " + row['notes']
        end
        
        
    end
    
    
    
end
