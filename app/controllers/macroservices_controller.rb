class MacroservicesController < ApplicationController
  def index
    render json: Macroservice.all
  end

  def create
    macroservice = Macroservice.create(macroservice_params)
    render json: macroservice

  end

  private
  def macroservice_params
    params.require(:macroservice).permit(:name)
  end
end
