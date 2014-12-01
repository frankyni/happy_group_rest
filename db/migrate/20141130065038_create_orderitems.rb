class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.references :items, index: true
      t.references :orders, index: true
      t.string :qty
      t.string :instuctions
    end
  end
end
