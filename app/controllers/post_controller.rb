class PostController < ApplicationController

  def index
    @post = Post.all.order(created_at: :desc)
  end

  def picpost
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def new
  end

  def create
      @post = Post.new(item:params[:item],brand:params[:brand],size:params[:size],content:params[:content])

      if params[:image]
        @post.img = "#{@post.id}.jpg"
        image = params[:image]
        File.binwrite("public/post_images/#{@post.img}", image.read)
      end

      @post.save

    redirect_to("/post/index")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.item = params[:item]
    @post.brand = params[:brand]
    @post.size = params[:size]
    @post.content = params[:content]

    if params[:image]
      @post.img = "#{@post.id}.jpg"
      image = params[:image]
      File.binwrite("public/post_images/#{@post.img}", image.read)
    end

    @post.save

    redirect_to("/post/#{@post.id}")
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    redirect_to("/post/index")
  end

end
