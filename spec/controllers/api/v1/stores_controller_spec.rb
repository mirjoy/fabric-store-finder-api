require 'rails_helper'

RSpec.describe Api::V1::StoresController, type: :controller do
  it "GET #index responds with JSON body containing all stores" do
    FactoryBot.create_list(:store, 3)
    get :index

    data = JSON.parse(response.body)["data"]
    expect(response).to have_http_status(200)
    expect data.length == 3
  end
end
