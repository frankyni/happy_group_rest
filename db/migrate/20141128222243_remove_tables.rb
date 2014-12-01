class RemoveTables < ActiveRecord::Migration
  def change
  	drop_table(:chefs_specs)
  	drop_table(:order_items)
  	drop_table(:special_combos)
  end
end
