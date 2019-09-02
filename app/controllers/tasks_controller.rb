class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
    @top5 = Usertask.limit(5).where(task_id: @task.id).order(created_at: :asc)
    @usertask_finish = Usertask.all.where(task_id: @task.id).order(created_at: :asc)
  end
end
