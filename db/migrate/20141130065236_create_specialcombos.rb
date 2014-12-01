class CreateSpecialcombos < ActiveRecord::Migration
  def change
    create_table :specialcombos do |t|
      t.references :items, index: true
      t.string :plain
      t.string :ff
      t.string :plainfr
      t.string :veg
      t.string :pork_chicken
      t.string :shrimp_beef
      t.string :wr
    end
  end
end
