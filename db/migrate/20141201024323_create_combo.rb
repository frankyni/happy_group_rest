class CreateCombo < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.string :price
      t.references :comboable, polymorphic: true
    end
  end
end
