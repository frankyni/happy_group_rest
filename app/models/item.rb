class Item < ActiveRecord::Base
	belongs_to :restaurant
	has_many :order_items
	has_many :orders, through: :order_items
	has_many :ingredients
	has_many :appitizers
	has_many :soups
	has_many :porks
	has_many :chickens
	has_many :beefs
	has_many :shrimps
	has_many :veggies
	has_many :chefs
	has_many :specialcombos
	has_many :specials
	has_many :extras
end