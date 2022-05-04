class CommitmentsController < ApplicationController
  def index
    @commitments = Commitment.all
    render json: @commitments
  end

  def new
    @commitment = Commitment.new
  end

  def create
    commitment = Commitment.create(commitment_params)
    #redirect_to(commitment)
    if activity.save
      render json: commitment, status: :created
    else
      render json: commitment.errors, status: :unprocessable_entity
    end
  end

  def edit
    @commitment = Commitment.find(params[:id])
  end

  def update
    commitment = Commitment.find(params[:id])
    commitment.update(commitment_params)
    redirect_to(commitment)
  end

  def show
    @commitment = Commitment.find(params[:id])
    render json: @activity
  end

  def destroy
    commitment = Commitment.find(params[:id])
    commitment.destroy
    redirect_to(commitments_path)
  end

  private
  def commitment_params
    params.require(:commitment).permit(:user_id, :activity_id, :commit_time, :completion, :journal)
  end
end