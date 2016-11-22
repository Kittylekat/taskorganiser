class TasksController < ApplicationController
	def index
		@tasks = Task.all
		@task = Task.new
	end

	def show
		@task = Task.find(params[:id])
		@comments = @task.comments.all
	end

	def new
		@task = Task.new
	end

	def edit
		@task = Task.find(params[:id])
	end

	def create
		@task = Task.new(task_params)
    #@tasks = Task.all

		respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_path, notice: 'Task was successfully created.' }
        #format.js   {}
        format.json { render :show, status: :created, location: @tasks }
        #format.json { render json: @task, status: :created, location: @tasks }
        puts('New Object')
      else
        format.html { render :show }
        format.json { render json: @tasks.errors, status: :unprocessable_entity }
        puts('Somthing went wrong')
      end

    end

	end

	def update
		@task = Task.find(params[:id])

		if @task.update(task_params)
        	format.html { redirect_to tasks_path, notice: 'Note was successfully updated.' }
        	format.json { render :show, status: :ok, location: @tasks }
		else
			format.html { render :edit }
        	format.json { render json: @tasks.errors, status: :unprocessable_entity }
		end
	end

	private
		def task_params
			params.require(:task).permit(:title, :text, :colors_id)
		end
end
