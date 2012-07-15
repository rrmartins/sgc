require 'test_helper'

class PessoaRecebersControllerTest < ActionController::TestCase
  setup do
    @pessoa_receber = pessoa_recebers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoa_recebers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa_receber" do
    assert_difference('PessoaReceber.count') do
      post :create, pessoa_receber: { email: @pessoa_receber.email, nome: @pessoa_receber.nome, tel: @pessoa_receber.tel }
    end

    assert_redirected_to pessoa_receber_path(assigns(:pessoa_receber))
  end

  test "should show pessoa_receber" do
    get :show, id: @pessoa_receber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa_receber
    assert_response :success
  end

  test "should update pessoa_receber" do
    put :update, id: @pessoa_receber, pessoa_receber: { email: @pessoa_receber.email, nome: @pessoa_receber.nome, tel: @pessoa_receber.tel }
    assert_redirected_to pessoa_receber_path(assigns(:pessoa_receber))
  end

  test "should destroy pessoa_receber" do
    assert_difference('PessoaReceber.count', -1) do
      delete :destroy, id: @pessoa_receber
    end

    assert_redirected_to pessoa_recebers_path
  end
end
