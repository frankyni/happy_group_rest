class RenameSpecInstructionsProfile < ActiveRecord::Migration
  def change
  	rename_column(:profiles, :spec_instruct, :instructions)
  	add_column(:items, :desc, :string)
  end
end
