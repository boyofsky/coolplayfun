require 'test_helper'

class TestControllersControllerTest < ActionController::TestCase
  setup do
    @test_controller = test_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_controller" do
    assert_difference('TestController.count') do
      post :create, test_controller: {  }
    end

    assert_redirected_to test_controller_path(assigns(:test_controller))
  end

  test "should show test_controller" do
    get :show, id: @test_controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_controller
    assert_response :success
  end

  test "should update test_controller" do
    patch :update, id: @test_controller, test_controller: {  }
    assert_redirected_to test_controller_path(assigns(:test_controller))
  end

  test "should destroy test_controller" do
    assert_difference('TestController.count', -1) do
      delete :destroy, id: @test_controller
    end

    assert_redirected_to test_controllers_path
  end
end
