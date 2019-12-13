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
        @jobpost = Jobpost.create(params.require(:jobpost).permit(:title, :description))
        if @jobpost.valid?
            redirect_to jobposts_path
        else 
            flash[:errors] = @jobpost.errors.full_messages
            redirect_to new_jobposts_path
        end
    end

    private def jobpost_params
        params.require(:jobpost).permit(:title, :description)
    end
end
