class Store < ApplicationRecord
  validates :name, :address, :geopoint, presence: true
end
