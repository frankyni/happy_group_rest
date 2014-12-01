class Pork < ActiveRecord::Base
	belongs_to :item
	has_one :lunch, as: :lunchable
	has_one :combo, as: :comboable
end