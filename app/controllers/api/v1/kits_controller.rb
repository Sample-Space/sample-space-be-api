class Api::V1::KitsController < ApplicationController

  def index
    response = KitFacade.get_all_kits
    render json: response, status: 200
  end

  def show
    kit = Kit.find_by(name: params[:name])
    response = KitFacade.get_kit(kit)
    render json: response, status: 200
  end
end
