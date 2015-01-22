class RoutesController < ApplicationController

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)
    if @route.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def route_params
    params.require(:route).permit(:name, :train_id)
  end
end

