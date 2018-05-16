FactoryBot.define do
  factory :store do
    name "The Fabric Store"
    address "136 South La Brea Ave, Los Angeles, CA 90036"
    geopoint "POINT(#{114.2219993} #{22.3129125})"
  end
end
