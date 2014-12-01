class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.references :items, index: true
      t.string :price
    end
  end
end
