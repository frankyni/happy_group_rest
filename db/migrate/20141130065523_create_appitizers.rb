class CreateAppitizers < ActiveRecord::Migration
  def change
    create_table :appitizers do |t|
      t.references :items, index: true
      t.string :sm_price
      t.string :lg_price
    end
  end
end
