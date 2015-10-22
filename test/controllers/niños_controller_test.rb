require 'test_helper'

class NiñosControllerTest < ActionController::TestCase
  setup do
    @niño = niños(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:niños)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create niño" do
    assert_difference('Niño.count') do
      post :create, niño: { apoderado_id: @niño.apoderado_id, colegio_id: @niño.colegio_id, horario: @niño.horario, nombre: @niño.nombre }
    end

    assert_redirected_to niño_path(assigns(:niño))
  end

  test "should show niño" do
    get :show, id: @niño
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @niño
    assert_response :success
  end

  test "should update niño" do
    patch :update, id: @niño, niño: { apoderado_id: @niño.apoderado_id, colegio_id: @niño.colegio_id, horario: @niño.horario, nombre: @niño.nombre }
    assert_redirected_to niño_path(assigns(:niño))
  end

  test "should destroy niño" do
    assert_difference('Niño.count', -1) do
      delete :destroy, id: @niño
    end

    assert_redirected_to niños_path
  end
end
