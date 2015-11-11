class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @category = Category.find_by(category_params)
    if Tag.find_by(post: @post, category: @category)
    else
      @tag = @post.tags.create
      if @tag.category = @category
      else
        @tag.category = Category.create(category_params)
      end
      @tag.save
    end
    redirect_to post_path(@post)
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
