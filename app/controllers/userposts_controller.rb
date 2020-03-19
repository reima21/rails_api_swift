class UserpostsController < ApplicationController
    before_action :set_post, only: [:show, :update, :destroy]

    def create
        userpost = Userpost.new(post_params)
        if userpost.save
        render json: { status: 'SUCCESS', data: userpost }
        else
        render json: { status: 'ERROR', data: userpost.errors }
        end
    end

    def destroy
        @userpost.destroy
        render json: { status: 'SUCCESS', message: 'Deleted the post', data: @userpost }
    end

    def update
        if @userpost.update(post_params)
        render json: { status: 'SUCCESS', message: 'Updated the post', data: @userpost }
        else
        render json: { status: 'SUCCESS', message: 'Not updated', data: @userpost.errors }
        end
    end

    private

    def set_post
        @userpost = Userpost.find(params[:id])
    end

    def post_params
        params.require(:userpost).permit(:title)
    end
end
