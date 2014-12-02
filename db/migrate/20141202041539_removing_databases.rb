class RemovingDatabases < ActiveRecord::Migration
  def change
  	drop_table(:appitizers)
  	drop_table(:beefs)
  	drop_table(:chefs)
  	drop_table(:chickens)
  	drop_table(:combos)
  	drop_table(:extras)
  	drop_table(:housespecials)
  	drop_table(:ingredients)
  	drop_table(:lunches)
  	drop_table(:porks)
  	drop_table(:shrimps)
  	drop_table(:soups)
  	drop_table(:specialcombos)
  	drop_table(:veggies)
  end
end
