require 'test_helper'

class PodhostsControllerTest < ActionController::TestCase
  setup do
    @podhost = podhosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:podhosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create podhost" do
    assert_difference('Podhost.count') do
      post :create, podhost: { host_name: @podhost.host_name, wwn_a: @podhost.wwn_a, wwn_b: @podhost.wwn_b }
    end

    assert_redirected_to podhost_path(assigns(:podhost))
  end

  test "should show podhost" do
    get :show, id: @podhost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @podhost
    assert_response :success
  end

  test "should update podhost" do
    patch :update, id: @podhost, podhost: { host_name: @podhost.host_name, wwn_a: @podhost.wwn_a, wwn_b: @podhost.wwn_b }
    assert_redirected_to podhost_path(assigns(:podhost))
  end

  test "should destroy podhost" do
    assert_difference('Podhost.count', -1) do
      delete :destroy, id: @podhost
    end

    assert_redirected_to podhosts_path
  end
end
