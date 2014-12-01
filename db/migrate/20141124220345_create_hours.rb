class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.references :restaurants, index: true
      t.string :sunday
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
    end
  end
end
