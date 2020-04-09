class Currency < ActiveRecord::Migration[6.0]
  def change
    create_table :currency do |t|
   	  t.string :code
   	  t.float :startingcash, scale: 2, default: "0,00"
   	  t.float :commissions, scale: 2, default: "0,00" 
   	  t.float :deposits, scale: 2, default: "0,00" 
   	  t.float :dividends, scale: 2, default: "0,00" 
   	  t.float :nettradessales, scale: 2, default: "0,00" 
   	  t.float :nettradespurchase, scale: 2, default: "0,00" 
   	  t.float :withholdingtax, scale: 2, default: "0,00" 
   	  t.float :agio, scale: 2, default: "0,00" 
   	  t.float :endingcash, scale: 2, default: "0,00"
   	  t.float :endingsettledcash, scale: 2, default: "0,00" 
    end
  end
end