class ChangeItemsItem < ActiveRecord::Migration
  def change
  	rename_column(:appitizers, :items_id, :item_id)
  	rename_column(:beefs, :items_id, :item_id)
  	rename_column(:chefs, :items_id, :item_id)
  	rename_column(:chickens, :items_id, :item_id)
  	rename_column(:extras, :items_id, :item_id)
  	rename_column(:hours, :restaurants_id, :restaurant_id)
  	rename_column(:housespecials, :items_id, :item_id)
  	rename_column(:ingredients, :items_id, :item_id)
  	rename_column(:orderitems, :items_id, :item_id)
  	rename_column(:orderitems, :orders_id, :order_id)
  	rename_column(:orders, :users_id, :user_id)
  	rename_column(:porks, :items_id, :item_id)
  	rename_column(:profiles, :users_id, :user_id)
  	rename_column(:shrimps, :items_id, :item_id)
  	rename_column(:soups, :items_id, :item_id)
  	rename_column(:specialcombos, :items_id, :item_id)
  	rename_column(:veggies, :items_id, :item_id)
  	rename_column(:lunches, :price, :ln_price)
  	rename_column(:combos, :price, :combo_price)
  end
end
