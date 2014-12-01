class Restaurant < ActiveRecord::Base
	belongs_to :admin
	has_one :hour, dependent: :destroy
	has_many :items, dependent: :destroy
end