class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render json: @activities
  end

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.create(activity_params)
    #redirect_to(activity)
    if activity.save
      render json: activity, status: :created
    else
      render json: activity.errors, status: :unprocessable_entity
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    activity = Activity.find(params[:id])
    activity.update(activity_params)
    redirect_to(activity)
  end

  def show
    @activity = Activity.find(params[:id])
    render json: @activity
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    redirect_to(activities_path)
  end

  private
  def activity_params
    params.require(:activity).permit(:category, :activity, :age, :mobility, :friends, :equipment, :location, :time_todo, :info)
  end
end
