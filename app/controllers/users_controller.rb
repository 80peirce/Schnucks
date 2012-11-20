class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @user.wins = 0
    @user.total_points = 0
    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
    @users_ranked = @users.sort { |x,y| y.total_points <=> x.total_points }
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    redirect_to users_url
  end
  
end