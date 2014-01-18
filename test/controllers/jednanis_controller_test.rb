require 'test_helper'

class JednanisControllerTest < ActionController::TestCase
  setup do
    @jednani = jednanis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jednanis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jednani" do
    assert_difference('Jednani.count') do
      post :create, jednani: { obsah: @jednani.obsah, porada_id: @jednani.porada_id, tema: @jednani.tema }
    end

    assert_redirected_to jednani_path(assigns(:jednani))
  end

  test "should show jednani" do
    get :show, id: @jednani
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jednani
    assert_response :success
  end

  test "should update jednani" do
    patch :update, id: @jednani, jednani: { obsah: @jednani.obsah, porada_id: @jednani.porada_id, tema: @jednani.tema }
    assert_redirected_to jednani_path(assigns(:jednani))
  end

  test "should destroy jednani" do
    assert_difference('Jednani.count', -1) do
      delete :destroy, id: @jednani
    end

    assert_redirected_to jednanis_path
  end
end
