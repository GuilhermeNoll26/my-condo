class CondoBill < ApplicationRecord
  belongs_to :apartament, optional:true
  belongs_to :destination_cashier, :class_name => 'Cashier'
  
  after_update do
    
      if self.paid == true
        
        sql_select_cashier = "SELECT balance FROM cashiers WHERE id=" + self.destination_cashier_id.to_s + ";"  
        
        #Recupera o ultimo valor do caixa informado  
        result_balance = ActiveRecord::Base.connection.exec_query(sql_select_cashier)  
          
          #Salva em uma variavel
          result_balance.each do |row|
            @last_cashier_balance = row['balance']
          end
        
        #Faz a adição do valor pago
        new_balance = @last_cashier_balance.to_d + self.value 
        
        sql_update_cashier = "UPDATE cashiers SET balance=" + new_balance.to_s + " WHERE id=" + self.destination_cashier_id.to_s + ";"  
        
        #Executa o sql de update com o novo valor do caixa        
        Cashier = ActiveRecord::Base.connection.execute(sql_update_cashier)
        
        
      end  
  end
  
  
end
