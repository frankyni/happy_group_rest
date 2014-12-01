class CreateChefsSpec < ActiveRecord::Migration
  def change
    create_table :chefs_specs do |t|
      t.references :items, index: true
      t.string :description
      t.string :price
    end
  end
end
