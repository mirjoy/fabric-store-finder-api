require 'rails_helper'

RSpec.describe Api::V1::StoresController, type: :controller do

  describe "GET #index" do
    before do
      get :index
    end

    let(:store) { FactoryBot.create(:store) }

    it "returns http success" do
      binding.pry
      expect(response).to have_http_status(:success)
    end

    # it "response with JSON body containing expected Store attributes" do
    #   hash_body = nil
    #   expect { hash_body = JSON.parse(response.body).with_indifferent_access }.not_to raise_exception
    #   expect(hash_body.keys).to match_array([:id, :name, :address, :geopoint])
    #   expect(hash_body).to match({
    #     id: store.id,
    #   })
    # end
  end
end
