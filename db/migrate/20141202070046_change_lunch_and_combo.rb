class ChangeLunchAndCombo < ActiveRecord::Migration
  def change
  	remove_column(:items, :lunch)
  	remove_column(:items, :combo)
  	add_column(:items, :lunch, :string, default: "", null: false)
  	add_column(:items, :combo, :string, default: "", null: false)
  end
end
