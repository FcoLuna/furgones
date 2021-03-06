require 'test_helper'

class TrabajadorsControllerTest < ActionController::TestCase
  setup do
    @trabajador = trabajadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trabajadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trabajador" do
    assert_difference('Trabajador.count') do
      post :create, trabajador: { id_furgon: @trabajador.id_furgon, nombre: @trabajador.nombre, sueldo: @trabajador.sueldo, tipo: @trabajador.tipo }
    end

    assert_redirected_to trabajador_path(assigns(:trabajador))
  end

  test "should show trabajador" do
    get :show, id: @trabajador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trabajador
    assert_response :success
  end

  test "should update trabajador" do
    patch :update, id: @trabajador, trabajador: { id_furgon: @trabajador.id_furgon, nombre: @trabajador.nombre, sueldo: @trabajador.sueldo, tipo: @trabajador.tipo }
    assert_redirected_to trabajador_path(assigns(:trabajador))
  end

  test "should destroy trabajador" do
    assert_difference('Trabajador.count', -1) do
      delete :destroy, id: @trabajador
    end

    assert_redirected_to trabajadors_path
  end
end
