class RemoveIndexItemsDefault < ActiveRecord::Migration
  def change
  	change_column_default(:items, :lunch, nil)
  	change_column_default(:items, :combo, nil)
  end
end
