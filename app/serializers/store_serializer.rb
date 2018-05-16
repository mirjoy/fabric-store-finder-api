class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :geopoint
end
