class JobpostsController < ApplicationController
    def view
        @jobposts = jobpost.all
    end

    def show
        @jobpost = jobpost.find(params[:id])
    end

    def new

    end

    def create
        @jobpost = jobpost.new(jobpost_params)
        @jobpost.save
        redirect_to @jobpost
    end

    private def jobpost_params
        params.require(:jobpost).permit(:title, :description)
    end
end
