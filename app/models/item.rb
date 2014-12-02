class Item < ActiveRecord::Base
	belongs_to :restaurant
	has_many :order_items
	has_many :orders, through: :order_items
	has_many :ingredients
	has_one :appitizer
	has_one :soup
	has_one :pork
	has_one :chicken
	has_one :beef
	has_one :shrimp
	has_one :veggie
	has_one :chef
	has_one :specialcombo
	has_one :special
	has_one :extra
end