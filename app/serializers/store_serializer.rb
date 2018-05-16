class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :latitude, :longitude
end
