class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activities = Activity.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @activities = Activity.new(activity_params)
    if @activity.save
      redirect_to list_activities_path(@activity)
    else
      render partial: "form"
    end
  end

  def update
    if @activity.update(activity_params)
      redirect_to activities_path(@activity)
    else
      render partial: "form"
    end
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name)
  end
end
