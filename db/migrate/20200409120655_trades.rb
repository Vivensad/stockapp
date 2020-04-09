class Trades < ActiveRecord::Migration[6.0]
  def change
  	create_table :trades do |t|
  	  t.string :currency
  	  t.string :stockcode, precision: 10
  	  t.datetime :proceededdate
  	  t.integer :quanity, precision: 20, default: "0"
  	  t.float :tprice, scale: 2, default: "0,00"
  	  t.float :cprice, scale: 2, default: "0,00"
  	  t.float :proceeds, scale: 2, default: "0,00"
  	  t.float :fee, scale: 2, default: "0,00"
  	  t.float :basis, scale: 2, default: "0,00"
  	  t.float :plrealized, scale: 2, default: "0,00"
  	  t.float :plmtm, scale: 2, default: "0,00"
  	  t.string :code, precision: 1
    end
  end
end
