class Api::V1::KitsController < ApplicationController

  def index
    response = KitFacade.get_all_kits
    render json: response, status: 200
  end
end
