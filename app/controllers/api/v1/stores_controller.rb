module Api::V1
  class StoresController < ApplicationController
    def index
      @stores = Store.all
      render json: @stores
    end

    def show
      render json: Store.find(params[:id])
    end
  end
end
