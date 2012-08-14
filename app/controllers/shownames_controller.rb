class ShownamesController < ApplicationController
  def show
    @playa1= params[:p1]
    @playa2= params[:p2]
    @playa3= params[:p3]
  end
end
