require 'test_helper'

class Board2sControllerTest < ActionController::TestCase
  setup do
    @board2 = board2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board2" do
    assert_difference('Board2.count') do
      post :create, board2: { ncolumns: @board2.ncolumns, nrows: @board2.nrows, percentLive: @board2.percentLive }
    end

    assert_redirected_to board2_path(assigns(:board2))
  end

  test "should show board2" do
    get :show, id: @board2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board2
    assert_response :success
  end

  test "should update board2" do
    put :update, id: @board2, board2: { ncolumns: @board2.ncolumns, nrows: @board2.nrows, percentLive: @board2.percentLive }
    assert_redirected_to board2_path(assigns(:board2))
  end

  test "should destroy board2" do
    assert_difference('Board2.count', -1) do
      delete :destroy, id: @board2
    end

    assert_redirected_to board2s_path
  end
end
