class AddColumnLunchItems < ActiveRecord::Migration
  def change
  	add_column(:items, :lunch, :boolean, default: false)
  	add_column(:items, :combo, :boolean, default: false)
  end
end
