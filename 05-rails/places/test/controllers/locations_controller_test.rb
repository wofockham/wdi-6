require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
