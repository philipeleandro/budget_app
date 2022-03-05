class ServicesController < ApplicationController
  def index
    render json: Service.all    
  end

  def create
    service = Service.create(service_params)
    render json: service

  end

  private
  def service_params
    params.require(:service).permit(:name)
  end
end
