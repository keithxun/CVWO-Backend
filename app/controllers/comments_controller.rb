class CommentsController < ApplicationController
    before_action :set_post
    before_action :authenticate_user!, except: [:index]
    def index
      @comments = @post.comments
      render json: @comments
    end
  
    def create
      @comment = @post.comments.new(comment_params)
  
      if @comment.save
        render json: @comment, status: :created
      else
        puts "Post validation errors:", @post.errors.full_messages
        render json: @comment.errors, status: :unprocessable_entity
      end
    end

    def destroy
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        head :no_content
    end
  
    private
  
    def set_post
      @post = Post.find(params[:post_id])
    end
  
    def comment_params
      params.require(:comment).permit(:body)
    end
  end
  