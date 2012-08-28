require 'test_helper'

class ScoreControllerTest < ActionController::TestCase
  test "should get manual" do
    get :manual
    assert_response :success
  end

end
