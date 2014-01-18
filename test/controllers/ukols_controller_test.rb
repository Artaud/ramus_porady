require 'test_helper'

class UkolsControllerTest < ActionController::TestCase
  setup do
    @ukol = ukols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ukols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ukol" do
    assert_difference('Ukol.count') do
      post :create, ukol: { deadline: @ukol.deadline, funkce_id: @ukol.funkce_id, obsah: @ukol.obsah, porada_id: @ukol.porada_id, splneno: @ukol.splneno }
    end

    assert_redirected_to ukol_path(assigns(:ukol))
  end

  test "should show ukol" do
    get :show, id: @ukol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ukol
    assert_response :success
  end

  test "should update ukol" do
    patch :update, id: @ukol, ukol: { deadline: @ukol.deadline, funkce_id: @ukol.funkce_id, obsah: @ukol.obsah, porada_id: @ukol.porada_id, splneno: @ukol.splneno }
    assert_redirected_to ukol_path(assigns(:ukol))
  end

  test "should destroy ukol" do
    assert_difference('Ukol.count', -1) do
      delete :destroy, id: @ukol
    end

    assert_redirected_to ukols_path
  end
end
