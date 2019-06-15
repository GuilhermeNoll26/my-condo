class Entry < ApplicationRecord
  belongs_to :cashier, optional:true
  belongs_to :apartament, optional:true


  after_save do
  
    #Verifica se tem um caixa selecionado
    if self.cashier_id != nil
      
      
      sql_select_cashier = "SELECT balance FROM cashiers WHERE id=" + self.cashier_id.to_s + ";"  
      
      #Recupera o ultimo valor do caixa informado  
      result_balance = ActiveRecord::Base.connection.exec_query(sql_select_cashier)  
        
        #Salva em uma variavel
        result_balance.each do |row|
          @last_cashier_balance = row['balance']
        end
      
      #Faz a subtração do valor
      new_balance = @last_cashier_balance.to_d - self.value 
      
      sql_update_cashier = "UPDATE cashiers SET balance=" + new_balance.to_s + " WHERE id=" + self.cashier_id.to_s + ";"  
      
      #Executa o sql de update com o novo valor do caixa        
      Cashier = ActiveRecord::Base.connection.execute(sql_update_cashier)
      
      #Alterando o status de pagamento
      
      sql_update_entries = "UPDATE entries SET paid=true WHERE id=" + Entry.maximum(:id).to_s + ";"
      
      Entries = ActiveRecord::Base.connection.execute(sql_update_entries)
      
    end
    
  end  
  
end