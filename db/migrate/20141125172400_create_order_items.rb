class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :orders, index: true
      t.references :items, index: true
      t.string :qty
      t.string :spec_instruct
    end
  end
end
