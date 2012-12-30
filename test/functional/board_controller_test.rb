require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get blank" do
    get :blank
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

end
