class Reservation < ApplicationRecord
  has_many :reservation_items, :dependent => :destroy
  has_many :items, :through => :reservation_items
end