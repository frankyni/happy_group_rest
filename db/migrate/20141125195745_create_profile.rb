class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :users, index: true
      t.string :address
      t.string :zip
      t.string :contact
      t.string :spec_instruct
    end
  end
end
