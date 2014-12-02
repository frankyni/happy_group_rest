class RemoveTableOrderitem < ActiveRecord::Migration
  def change
  	drop_table(:orderitems)
  end
end
