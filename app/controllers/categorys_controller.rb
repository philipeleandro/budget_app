class CategorysController < ApplicationController
  def index
    render json: Category.all
  end

  def create
    category = Category.create(category_params)
    render json: category
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end