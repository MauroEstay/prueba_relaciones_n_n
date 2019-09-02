class UsertasksController < ApplicationController
  before_action :authenticate_user!
  def create
    @task = Task.find(params[:task_id])
    @usertask = Usertask.new(task: @task, user: current_user, completado: true)
    if @usertask.save
      redirect_to tasks_path, notice: 'La tarea ha sido realizada'
    else
      redirect_to tasks_path, alert: 'La tarea no ha sido realizada'
    end
  end

  def index
    @usertasks = current_user.usertasks
  end

  def destroy
    @task = Task.find(params[:task_id])
    @usertasks = Usertask.find_by(task: @task, user: current_user.id)
    @usertasks.destroy
    redirect_to tasks_path
  end
end
