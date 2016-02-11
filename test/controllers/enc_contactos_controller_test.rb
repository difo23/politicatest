require 'test_helper'

class EncContactosControllerTest < ActionController::TestCase
  setup do
    @enc_contacto = enc_contactos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enc_contactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enc_contacto" do
    assert_difference('EncContacto.count') do
      post :create, enc_contacto: { apellido: @enc_contacto.apellido, cedula: @enc_contacto.cedula, celular: @enc_contacto.celular, mesa: @enc_contacto.mesa, nombre: @enc_contacto.nombre, paraje: @enc_contacto.paraje, telefono: @enc_contacto.telefono }
    end

    assert_redirected_to enc_contacto_path(assigns(:enc_contacto))
  end

  test "should show enc_contacto" do
    get :show, id: @enc_contacto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enc_contacto
    assert_response :success
  end

  test "should update enc_contacto" do
    patch :update, id: @enc_contacto, enc_contacto: { apellido: @enc_contacto.apellido, cedula: @enc_contacto.cedula, celular: @enc_contacto.celular, mesa: @enc_contacto.mesa, nombre: @enc_contacto.nombre, paraje: @enc_contacto.paraje, telefono: @enc_contacto.telefono }
    assert_redirected_to enc_contacto_path(assigns(:enc_contacto))
  end

  test "should destroy enc_contacto" do
    assert_difference('EncContacto.count', -1) do
      delete :destroy, id: @enc_contacto
    end

    assert_redirected_to enc_contactos_path
  end
end
