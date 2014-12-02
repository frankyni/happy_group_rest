class AddColumnItemsSpice < ActiveRecord::Migration
  def change
  	add_column(:items, :spice, :boolean, default: false)
  end
end
