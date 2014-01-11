require 'test_helper'

class PoradasControllerTest < ActionController::TestCase
  setup do
    @porada = poradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poradas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porada" do
    assert_difference('Porada.count') do
      post :create, porada: { datum: @porada.datum }
    end

    assert_redirected_to porada_path(assigns(:porada))
  end

  test "should show porada" do
    get :show, id: @porada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porada
    assert_response :success
  end

  test "should update porada" do
    patch :update, id: @porada, porada: { datum: @porada.datum }
    assert_redirected_to porada_path(assigns(:porada))
  end

  test "should destroy porada" do
    assert_difference('Porada.count', -1) do
      delete :destroy, id: @porada
    end

    assert_redirected_to poradas_path
  end
end
