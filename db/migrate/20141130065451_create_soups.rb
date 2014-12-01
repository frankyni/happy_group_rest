class CreateSoups < ActiveRecord::Migration
  def change
    create_table :soups do |t|
      t.references :items, index: true
      t.string :sm_price
      t.string :lg_price
    end
  end
end
