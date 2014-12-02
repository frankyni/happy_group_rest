class AddColumnTextItems < ActiveRecord::Migration
  def change
  	add_column(:items, :type, :text)
  end
end
