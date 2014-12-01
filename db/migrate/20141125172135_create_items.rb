class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :restaurants, index: true
    end
  end
end
