class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
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
  
  def update
    @user = User.find(params[:id])
    #params[:user][:wins] = params[:user][:wins].to_i 
    #params[:user][:total_points] = params[:user][:total_points].to_i
    if @user.update_attributes(params[:user])
      #redirect_to @user, notice: 'User was successfully updated.'
      redirect_to users_url 
    else
      render 'edit'
    end
  end
  
 
  
end