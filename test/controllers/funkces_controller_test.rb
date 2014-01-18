require 'test_helper'

class FunkcesControllerTest < ActionController::TestCase
  setup do
    @funkce = funkces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funkces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funkce" do
    assert_difference('Funkce.count') do
      post :create, funkce: { jmeno: @funkce.jmeno, nazev_funkce: @funkce.nazev_funkce, prijmeni: @funkce.prijmeni }
    end

    assert_redirected_to funkce_path(assigns(:funkce))
  end

  test "should show funkce" do
    get :show, id: @funkce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funkce
    assert_response :success
  end

  test "should update funkce" do
    patch :update, id: @funkce, funkce: { jmeno: @funkce.jmeno, nazev_funkce: @funkce.nazev_funkce, prijmeni: @funkce.prijmeni }
    assert_redirected_to funkce_path(assigns(:funkce))
  end

  test "should destroy funkce" do
    assert_difference('Funkce.count', -1) do
      delete :destroy, id: @funkce
    end

    assert_redirected_to funkces_path
  end
end
