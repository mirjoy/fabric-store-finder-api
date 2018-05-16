class Store < ApplicationRecord
  validates :name, :address, presence: true
  validates :address, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  has_many :store_tags, dependent: :destroy
  has_many :tags, through: :store_tags
end
