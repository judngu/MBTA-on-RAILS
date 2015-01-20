class HomesController < ApplicationController
  def index
    red = Train.find_by(name: "Red")
    @redstops = Stop.where(train_id: red.id)

    blue = Train.find_by(name: "Blue")
    @bluestops = Stop.where(train_id: blue.id)


    orange = Train.find_by(name: "Orange")
    @orangestops = Stop.where(train_id: orange.id)
  end
end
