class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :restaurant, index: true
      t.string :sm_price, null: false
      t.string :lg_price
      t.string :desc, null: false
      t.references :category
      t.boolean :combo, default: false
      t.boolean :lunch, default: false

      t.timestamps
    end
  end
end
