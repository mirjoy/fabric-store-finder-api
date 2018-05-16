class Tag < ApplicationRecord
  validate :description, uniqueness: true

  has_many :store_tags, dependent: :destroy
  has_many :stores, through: :store_tags
end
