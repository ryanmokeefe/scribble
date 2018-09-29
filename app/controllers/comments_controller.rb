class CommentsController < ApplicationController

    def index
        @post = Post.find(params[:id])
        @comments = Comment.all
    end

    def show
        @post = Post.find(params[:id])
        @comment = Comment.find(params[:id])
    end

    def new
        # @post = Post.find(params[:id])
        @comment = Comment.new
    end

    def create
        @post = Post.find(params[:post_id])
        @comment = Comment.create!(comment_params)
        redirect_to post_comment_path(@post, @comment)
    end

    def edit
        @post = Post.find(params[:post_id])        
        @comment = Comment.find(params[:id])
    end

    def update
        @post = Post.find(params[:post_id])        
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_to post_comment_path(@post, @comment)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to post_comments_path(@post, @comment)
    end

    private
    def comment_params
        params.require(:comment).permit(:title, :content, :post_id)
    end


end
