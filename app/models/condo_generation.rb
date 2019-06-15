class CondoGeneration < ApplicationRecord
    
    
    after_save do
        
        #sql1 = 'select number from apartaments'
        #tamanho_aptos = ActiveRecord::Base.connection.execute(sql1)
        
        
        sql = "select e.reference_month, e.id,
            sum(lg.value) / count(a.id) as valor_despesas_gerais,
        	  sum(le.value) as valor_despesas_especificas
            
            
            
            from entries e
            
            left join apartaments a on e.id = a.id
            left join entries lg on e.id = lg.id and e.reference_month = lg.reference_month
            left join entries le on e.id = le.id and e.reference_month = le.reference_month
            
            where e.id = 1 and e.reference_month = '06/2019'
            group by e.reference_month, e.id"
            
        result = ActiveRecord::Base.connection.exec_query(sql)
        
        result.each do |row|
            puts row['id'].to_s + " " + row['mounth_reference']
            c = CondoBill.new
            c.month = row['month_reference']
            c.save
        end
        
        
    end
    
    
    
end
