class CreateSpecialCombo < ActiveRecord::Migration
  def change
    create_table :special_combos do |t|
      t.references :items, index: true
      t.string :plain
      t.string :french_fries
      t.string :plain_fr
      t.string :veg
      t.string :pork_chicken
      t.string :shrimp_beef
      t.string :white_rice
    end
  end
end
