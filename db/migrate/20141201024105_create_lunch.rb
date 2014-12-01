class CreateLunch < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :price
      t.references :lunchable, polymorphic: true
    end
  end
end
