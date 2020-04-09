class Forex < ActiveRecord::Migration[6.0]
  def change
  	create_table :forex do |t|
  	  t.string :currency, precision: 10 
  	  t.string :symbol
  	  t.datetime :proceededdate
  	  t.float :tprice, scale: 2, default: "0,00"
  	  t.float :proceed, scale: 2, default: "0,00"
  	  t.float :feeinusd, scale: 2, default: "0,00"
  	  t.float :mtminusd, scale: 2, default: "0,00"
  	  t.string :code, precision: 1
    end
  end
end
