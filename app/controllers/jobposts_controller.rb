class JobpostsController < ApplicationController
    def index
        @jobposts = Jobpost.all
    end

    def show
        @jobpost = Jobpost.find(params[:id])
    end

    def new
        @jobpost = Jobpost.new
    end

    def create
        @jobpost = Jobpost.create(jobpost_params)
        if @jobpost.valid?
            redirect_to jobposts_path
        else 
            flash[:errors] = @jobpost.errors.full_messages
            redirect_to new_jobposts_path
        end
    end

    def edit
        @jobpost = Jobpost.find(params[:id])
    end

    def update
        @jobpost = Jobpost.find(params[:id])
        if(@jobpost.update(jobpost_params))
            redirect_to @jobpost
        else
            render 'edit'
        end
    end

    def destroy
        @jobpost =Jobpost.find(params[:id])
        @jobpost.destroy
        redirect_to jobposts_path
    end

    private def jobpost_params
        params.require(:jobpost).permit(:title, :description)
    end
end
