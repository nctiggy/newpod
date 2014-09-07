require 'test_helper'

class PodhostControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
