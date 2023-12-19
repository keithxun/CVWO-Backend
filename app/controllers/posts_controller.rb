class PostsController < ApplicationController
    before_action :set_post, only: [:show, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

    def index
      @posts = Post.all
      render json: @posts
    end
  
    def show
      render json: @post
    end
  
    def create
      @post = Post.new(post_params)
  
      if @post.save
        render json: @post, status: :created
      else
        puts "Post validation errors:", @post.errors.full_messages
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @post.update(post_params)
        render json: @post
      else
        puts "Post validation errors:", @post.errors.full_messages
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @post.destroy
      head :no_content
    end
  
    private
  
    def set_post
      @post = Post.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
  end
  