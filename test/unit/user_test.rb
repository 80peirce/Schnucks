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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
