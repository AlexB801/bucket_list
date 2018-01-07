class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def show
  end

  def new
    @destination = Destination.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def update
    if @destination.update(destination_params)
      redirect_to destination_path(@destination)
    else
      render partial: "form"
    end
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to destination_path(@destination)
    else
      render partial: "form"
    end
  end

  def destroy
    @destination.destroy
    redirect_to destinations_path
  end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:name)
  end
end
