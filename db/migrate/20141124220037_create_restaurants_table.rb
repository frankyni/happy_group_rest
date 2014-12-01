class CreateRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.references :admin, index: true
      t.string :address
      t.string :phone_number
    end
  end
end
