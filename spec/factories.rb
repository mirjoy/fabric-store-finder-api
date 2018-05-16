FactoryBot.define do
  factory :store do
    name "The Fabric Store"
    sequence(:address) { |n| "#{n} La Brea Ave, Los Angeles, CA 90036" }
  end
end
