require 'test_helper'

class DojosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get world" do
    get :world
    assert_response :success
  end

  test "should get ninjas" do
    get :ninjas
    assert_response :success
  end

end
