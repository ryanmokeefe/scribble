class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @category = Category.find_or_create_by(name: params[:category_name])

    existing_tag = Tag.find_by(post: @post, category: @category)
    unless existing_tag
      @post.tags.create(category: @category)
    end
    redirect_to post_path(@post)
  end

end
