class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :users, index: true
      t.string :subtotal
      t.string :total
    end
  end
end
