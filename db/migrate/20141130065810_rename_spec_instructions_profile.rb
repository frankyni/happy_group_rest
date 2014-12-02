class RenameSpecInstructionsProfile < ActiveRecord::Migration
  def change
  	rename_column(:profiles, :spec_instruct, :instructions)
  end
end
