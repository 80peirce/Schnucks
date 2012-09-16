class UserController < ApplicationController
  def dummy
    @users = User.all
  end
end