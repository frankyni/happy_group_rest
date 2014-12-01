class CreateBeefs < ActiveRecord::Migration
  def change
    create_table :beefs do |t|
      t.references :items, index: true
      t.string :sm_price
      t.string :lg_price
    end
  end
end
