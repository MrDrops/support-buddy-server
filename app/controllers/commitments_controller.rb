class CommitmentsController < ApplicationController
  def index
    @commitments = Commitment.all
  end

  def new
    @commitment = Commitment.new
  end

  def create
    commitment = Commitment.create(commitment_params)
    redirect_to(commitment)
  end

  def edit
    @commitment = Commitment.find(params[:id])
  end

  def update
    commitment = Commitment.find(params[:id])
    commitment.update(activity_params)
    redirect_to(commitment)
  end

  def show
    @commitment = Commitment.find(params[:id])
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