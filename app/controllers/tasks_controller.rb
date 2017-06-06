class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    @token = params[:authenticity_token]
    @task.save
    redirect_to tasks_path
  end


  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.destroy(params[:id])
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :done)
  end

end
