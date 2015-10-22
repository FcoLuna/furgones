require 'test_helper'

class MujersControllerTest < ActionController::TestCase
  setup do
    @mujer = mujers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mujers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mujer" do
    assert_difference('Mujer.count') do
      post :create, mujer: { edad: @mujer.edad, sexo: @mujer.sexo }
    end

    assert_redirected_to mujer_path(assigns(:mujer))
  end

  test "should show mujer" do
    get :show, id: @mujer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mujer
    assert_response :success
  end

  test "should update mujer" do
    patch :update, id: @mujer, mujer: { edad: @mujer.edad, sexo: @mujer.sexo }
    assert_redirected_to mujer_path(assigns(:mujer))
  end

  test "should destroy mujer" do
    assert_difference('Mujer.count', -1) do
      delete :destroy, id: @mujer
    end

    assert_redirected_to mujers_path
  end
end
