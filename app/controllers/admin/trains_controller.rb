class Admin::TrainsController < ApplicationController
  def new
    @train = Train.new
  end
    
  def create
    @train = Train.new(train_params)
    if @train.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def train_params
    params.require(:train).permit(:name)
  end
end
