class CreateHousespecials < ActiveRecord::Migration
  def change
    create_table :housespecials do |t|
      t.references :items, index: true
      t.string :name
      t.string :sm_price
      t.string :lg_price
    end
  end
end
