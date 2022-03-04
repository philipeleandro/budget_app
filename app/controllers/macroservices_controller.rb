class MacroservicesController < ApplicationController
  def index
    render json: Macroservice.all
  end
end
