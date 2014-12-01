class Lunch < ActiveRecord::Base
	belongs_to :lunchable, polymorphic: true
end