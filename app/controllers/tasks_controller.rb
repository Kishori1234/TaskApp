class TasksController < ApplicationController
	def index
		@task = Task.all
	end	
	def new
		@task = Task.new
	end
	def create
		@task = Task.new(task_params)
		@task.save
		render new_task_path
	end
	private
	def task_params
		params.require(:task).permit(:taskId,:taskName,:status)
	end
end
