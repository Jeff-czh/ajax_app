class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

# コメントアウトする(投稿後にトップページにリダイレクトされるように)
#  def new
#  end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end
