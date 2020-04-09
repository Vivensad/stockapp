class Dividends < ActiveRecord::Migration[6.0]
  def change
  	create_table :dividends do |t|
  	  t.string :currency, precision: 10
  	  t.datetime :proceededdate
  	  t.text :description
  	  t.float :amount, scale: 2, default: "0,00"
  	  t.float :tax, scale: 2, default: "0,00"
  	  t.text :taxdescription
  	 end
  end
end
