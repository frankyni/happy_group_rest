class ChangePriceStringToDecimal < ActiveRecord::Migration
  def change
  	change_column(:items, :sm_price, :decimal, precision: 8, scale: 2, null: false)
  	change_column(:items, :lg_price, :decimal, precision: 8, scale: 2)
  	change_column(:orders, :subtotal, :decimal, precision: 8, scale: 2)
  	change_column(:orders, :total, :decimal, precision: 8, scale: 2)
  	change_column(:items, :lunch, :decimal, precision: 8, scale: 2)
  	change_column(:items, :combo, :decimal, precision: 8, scale: 2)
  end
end
