require 'test_helper'

class ShownamesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
