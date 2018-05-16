require 'rails_helper'

RSpec.describe Api::V1::StoresController, type: :controller do
  it "GET #index responds with JSON body containing all stores" do
    FactoryBot.create_list(:store, 3)
    get :index

    data = JSON.parse(response.body)["data"]
    expect(response).to have_http_status(200)
    expect data.length == 3
  end

  it "GET #show responds with JSON containing expected attributes" do
    store = FactoryBot.create(:store)
    get :show, params: { id: store.id }

    expect(response).to have_http_status(200)
    attrs = JSON.parse(response.body)['data']['attributes']
    expect(attrs.keys).to include("name", "address")
  end
end
