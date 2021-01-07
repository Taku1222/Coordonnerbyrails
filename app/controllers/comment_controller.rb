class CommentController < ApplicationController
  def index
    @comments = Comment.all.order(created_at: :desc)
  end

  def new
    @post = Post.find_by(id: params[:id])
  end

  def create
    @comment = Comment.new(comment:params[:content],post_id:params[:id])
    @comment.save

    @post = Post.find_by(id: params[:id])
    redirect_to("/post/#{@post.id}")
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy

    redirect_to("/post/#{@comment.post_id}")
  end


end
