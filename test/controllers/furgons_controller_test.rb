require 'test_helper'

class FurgonsControllerTest < ActionController::TestCase
  setup do
    @furgon = furgons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:furgons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create furgon" do
    assert_difference('Furgon.count') do
      post :create, furgon: { estado: @furgon.estado, patente: @furgon.patente }
    end

    assert_redirected_to furgon_path(assigns(:furgon))
  end

  test "should show furgon" do
    get :show, id: @furgon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @furgon
    assert_response :success
  end

  test "should update furgon" do
    patch :update, id: @furgon, furgon: { estado: @furgon.estado, patente: @furgon.patente }
    assert_redirected_to furgon_path(assigns(:furgon))
  end

  test "should destroy furgon" do
    assert_difference('Furgon.count', -1) do
      delete :destroy, id: @furgon
    end

    assert_redirected_to furgons_path
  end
end
