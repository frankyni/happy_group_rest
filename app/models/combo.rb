class Combo < ActiveRecord::Base
	belongs_to :comboable, polymorphic: true
end