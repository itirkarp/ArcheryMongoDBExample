require 'test_helper'

class ArchersControllerTest < ActionController::TestCase
  setup do
    @archer = archers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archer" do
    assert_difference('Archer.count') do
      post :create, archer: { name: @archer.name }
    end

    assert_redirected_to archer_path(assigns(:archer))
  end

  test "should show archer" do
    get :show, id: @archer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archer
    assert_response :success
  end

  test "should update archer" do
    patch :update, id: @archer, archer: { name: @archer.name }
    assert_redirected_to archer_path(assigns(:archer))
  end

  test "should destroy archer" do
    assert_difference('Archer.count', -1) do
      delete :destroy, id: @archer
    end

    assert_redirected_to archers_path
  end
end
