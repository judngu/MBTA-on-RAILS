class Admin::StopsController < ApplicationController

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(stop_params)
    if @stop.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def stop_params
    params.require(:stop).permit(:name, :train_id, :parent_station)
  end
end
