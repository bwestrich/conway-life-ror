require '../test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get blank" do
    get :blank
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "translate board to html" do
  	c = BoardController.new
  	assert_equals "a<br>b" c.to_html("a\nb")
  end 

end
