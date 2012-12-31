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

  #the following test doesn't work, as can't see the local variable c
  #also, the to_html method has been moved to the model object (board) 
  test "translate board to html" do
  	c = BoardController.new
  	assert_equals "a<br>b" c.to_html("a\nb")
  end 

end
