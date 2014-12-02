class Item < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :category
  validates :category, presence: true
end
