require 'test_helper'

class ContaRecebersControllerTest < ActionController::TestCase
  setup do
    @conta_receber = conta_recebers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conta_recebers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta_receber" do
    assert_difference('ContaReceber.count') do
      post :create, conta_receber: { data_vencimento: @conta_receber.data_vencimento, descricao: @conta_receber.descricao, nome: @conta_receber.nome, user_id: @conta_receber.user_id, valor: @conta_receber.valor }
    end

    assert_redirected_to conta_receber_path(assigns(:conta_receber))
  end

  test "should show conta_receber" do
    get :show, id: @conta_receber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conta_receber
    assert_response :success
  end

  test "should update conta_receber" do
    put :update, id: @conta_receber, conta_receber: { data_vencimento: @conta_receber.data_vencimento, descricao: @conta_receber.descricao, nome: @conta_receber.nome, user_id: @conta_receber.user_id, valor: @conta_receber.valor }
    assert_redirected_to conta_receber_path(assigns(:conta_receber))
  end

  test "should destroy conta_receber" do
    assert_difference('ContaReceber.count', -1) do
      delete :destroy, id: @conta_receber
    end

    assert_redirected_to conta_recebers_path
  end
end
