class PostsController < ApplicationController
    def create
        new_post = Post.create!(new_post_params)
        render json: new_post, status: :created
    end

    private

    def new_post_params
        params.permit(:title, :content, :summary, :category)
    end
end
