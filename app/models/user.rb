class User < ActiveRecord::Base
  attr_accessible :losses, :name, :total_points, :wins, :email
end
