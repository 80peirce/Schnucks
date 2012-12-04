# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  wins            :integer
#  losses          :integer
#  total_points    :decimal(5, 1)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string(255)
#  rps_wins        :integer
#  rocks           :integer
#  papers          :integer
#  scissorses      :integer
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :losses, :name, :total_points, :wins, :email, :rps_wins, :rocks, :papers, :scissorses, :password, :password_confirmation
  
  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  #commented out validations for short term editing administration of schucks data for tracking
  
  ### uncommented out validations to try to make it work again
end
