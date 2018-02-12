class PostsController < ApplicationController
    
        def index
            @posts = Comment.all
        end
    
        def show
            @post = post.find(params[:id])
        end
    
        def new
            @post = post.new
        end
    
        def create
            @post = post.create!(post_params)
            redirect_to post_path(@post)
        end
    
        def edit
            @post = post.find(params[:id])
        end
    
        def update
            @post = post.find(params[:id])
            @post.update(post_params)
        end
    
        def destroy
            @post = post.find(params[:id])
            @post.destroy
            redirect_to posts_path
        end
    
        private
        def post_params
            params.require(:post).permit(:title, :content)
        end
    
    end
    