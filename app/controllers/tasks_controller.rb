class TasksController < ApplicationController
 
  def index
    render json: Task.all
  end

  def create
    task = Task.create(task_params)
    render json: task
  end

  def show
    render json: Task.find(params[:id])
  end

  def destroy
    Task.find(params[:id]).destroy
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    render json: task
  end
  
  private
  def task_params
    params.require(:task).permit(:code,:name,:un,:value,:category_id)
  end
end
