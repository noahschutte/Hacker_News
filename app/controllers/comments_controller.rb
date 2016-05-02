class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    # @comment = Comment.new(post_id: , content: params[:comment][:content])
    if @comment.save
      redirect '/posts/show'
    else
      render 'posts/show'
    end
  end

end
