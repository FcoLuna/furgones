require 'test_helper'

class ApoderadosControllerTest < ActionController::TestCase
  setup do
    @apoderado = apoderados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apoderados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apoderado" do
    assert_difference('Apoderado.count') do
      post :create, apoderado: { nombre: @apoderado.nombre, paga: @apoderado.paga, telefono: @apoderado.telefono }
    end

    assert_redirected_to apoderado_path(assigns(:apoderado))
  end

  test "should show apoderado" do
    get :show, id: @apoderado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apoderado
    assert_response :success
  end

  test "should update apoderado" do
    patch :update, id: @apoderado, apoderado: { nombre: @apoderado.nombre, paga: @apoderado.paga, telefono: @apoderado.telefono }
    assert_redirected_to apoderado_path(assigns(:apoderado))
  end

  test "should destroy apoderado" do
    assert_difference('Apoderado.count', -1) do
      delete :destroy, id: @apoderado
    end

    assert_redirected_to apoderados_path
  end
end
