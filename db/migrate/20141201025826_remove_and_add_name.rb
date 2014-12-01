class RemoveAndAddName < ActiveRecord::Migration
  def change
  	remove_column(:items, :name)
  	add_column(:appitizers, :name, :string)
  	add_column(:soups, :name, :string)
  	add_column(:chefs, :name, :string)
  	add_column(:specialcombos, :name, :string)
  	add_column(:porks, :name, :string)
  	add_column(:chickens, :name, :string)
  	add_column(:beefs, :name, :string)
  	add_column(:shrimps, :name, :string)
  	add_column(:veggies, :name, :string)
  	add_column(:extras, :name, :string)
  end
end
