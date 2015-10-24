require 'test_helper'

class NinosControllerTest < ActionController::TestCase
  setup do
    @nino = ninos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ninos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nino" do
    assert_difference('Nino.count') do
      post :create, nino: { apoderado_id: @nino.apoderado_id, colegio_id: @nino.colegio_id, horario: @nino.horario, nombre: @nino.nombre }
    end

    assert_redirected_to nino_path(assigns(:nino))
  end

  test "should show nino" do
    get :show, id: @nino
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nino
    assert_response :success
  end

  test "should update niño" do
    patch :update, id: @nino, nino: { apoderado_id: @nino.apoderado_id, colegio_id: @nino.colegio_id, horario: @nino.horario, nombre: @nino.nombre }
    assert_redirected_to nino_path(assigns(:nino))
  end

  test "should destroy nino" do
    assert_difference('Nino.count', -1) do
      delete :destroy, id: @nino
    end

    assert_redirected_to ninos_path
  end
end
