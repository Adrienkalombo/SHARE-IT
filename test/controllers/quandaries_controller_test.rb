require 'test_helper'

class QuandariesControllerTest < ActionController::TestCase
  setup do
    @quandary = quandaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quandaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quandary" do
    assert_difference('Quandary.count') do
      post :create, quandary: { description: @quandary.description, rating: @quandary.rating, title: @quandary.title }
    end

    assert_redirected_to quandary_path(assigns(:quandary))
  end

  test "should show quandary" do
    get :show, id: @quandary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quandary
    assert_response :success
  end

  test "should update quandary" do
    patch :update, id: @quandary, quandary: { description: @quandary.description, rating: @quandary.rating, title: @quandary.title }
    assert_redirected_to quandary_path(assigns(:quandary))
  end

  test "should destroy quandary" do
    assert_difference('Quandary.count', -1) do
      delete :destroy, id: @quandary
    end

    assert_redirected_to quandaries_path
  end
end
