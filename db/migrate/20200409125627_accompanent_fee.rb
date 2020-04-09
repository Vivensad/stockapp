class AccompanentFee < ActiveRecord::Migration[6.0]
  def change
  	create_table :accompanentfee do |t|
  	  t.text :description
  	  t.float :amount, scale: 2, default: "0,00"
  	  t.float :percents, scale: 5, precision:10, default: "0"
  	  t.string :currency, precision: 10
  	end
  end
end
