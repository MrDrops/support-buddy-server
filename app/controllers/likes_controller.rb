class LikesController < ApplicationController
  def index
    @likes = Like.all
    render json: @likes
  end

  def new
    @like = Like.new
  end

  def create
    like = Like.create(like_params)
    #redirect_to(like)
    if like.save
      render json: like, status: :created
    else
      render json: like.errors, status: :unprocessable_entity
    end
  end

  def edit
    @like = Like.find(params[:id])
  end

  def update
    like = Like.find(params[:id])
    like.update(like_params)
    redirect_to(like)
  end

  def show
    @like = Like.find(params[:id])
    render json: @like
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to(likes_path)
  end

  private
  def like_params
    params.require(:like).permit(:activity_id, :user_id, :liked)
  end
end