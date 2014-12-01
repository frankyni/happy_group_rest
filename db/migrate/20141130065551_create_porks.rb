class CreatePorks < ActiveRecord::Migration
  def change
    create_table :porks do |t|
      t.references :items, index: true
      t.string :sm_price
      t.string :lg_price
    end
  end
end
