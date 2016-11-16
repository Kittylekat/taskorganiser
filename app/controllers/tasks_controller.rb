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

		respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.js   {}
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
  		end

	end

	def update
		@task = Task.find(params[:id])

		if @note.update(note_params)
        	format.html { redirect_to @task, notice: 'Note was successfully updated.' }
        	format.json { render :show, status: :ok, location: @task }
		else
			format.html { render :edit }
        	format.json { render json: @task.errors, status: :unprocessable_entity }
		end
	end

	private
		def task_params
			params.require(:task).permit(:title, :text)
		end
end
