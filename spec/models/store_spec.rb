require 'rails_helper'

RSpec.describe Store, :type => :model do
  let(:store) { FactoryBot.create(:store) }

  it "is valid with valid attributes" do
    expect(store).to be_valid
  end

  it "is not valid without a name" do
    store = Store.new(name: nil)
    expect(store).to_not be_valid
  end

  it "is not valid without an address" do
    store = Store.new(name: "The Fabric Store", address: nil)
    expect(store).to_not be_valid
  end

  it "is not valid without a geopoint" do
    store = Store.new(name: "The Fabric Store",
                      address: "136 South La Brea Ave, Los Angeles, CA 90036",
                      geopoint: nil)
    expect(store).to_not be_valid
  end
end
