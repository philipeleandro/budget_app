class CategorysController < ApplicationController
  def index
    render json: Category.all
  end

  def create
    category = Category.create(category_params)
    render json: category
  end
  
  def show
    render json: Category.find(params[:id])
  end

  def destroy
    Category.find(params[:id]).destroy
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
    render json: category
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end