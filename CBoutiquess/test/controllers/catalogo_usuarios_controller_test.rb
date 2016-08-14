require 'test_helper'

class CatalogoUsuariosControllerTest < ActionController::TestCase
  setup do
    @catalogo_usuario = catalogo_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogo_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogo_usuario" do
    assert_difference('CatalogoUsuario.count') do
      post :create, catalogo_usuario: { tipo: @catalogo_usuario.tipo }
    end

    assert_redirected_to catalogo_usuario_path(assigns(:catalogo_usuario))
  end

  test "should show catalogo_usuario" do
    get :show, id: @catalogo_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogo_usuario
    assert_response :success
  end

  test "should update catalogo_usuario" do
    patch :update, id: @catalogo_usuario, catalogo_usuario: { tipo: @catalogo_usuario.tipo }
    assert_redirected_to catalogo_usuario_path(assigns(:catalogo_usuario))
  end

  test "should destroy catalogo_usuario" do
    assert_difference('CatalogoUsuario.count', -1) do
      delete :destroy, id: @catalogo_usuario
    end

    assert_redirected_to catalogo_usuarios_path
  end
end
