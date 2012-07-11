require 'test_helper'

class PessoaPagarsControllerTest < ActionController::TestCase
  setup do
    @pessoa_pagar = pessoa_pagars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoa_pagars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa_pagar" do
    assert_difference('PessoaPagar.count') do
      post :create, pessoa_pagar: @pessoa_pagar.attributes
    end

    assert_redirected_to pessoa_pagar_path(assigns(:pessoa_pagar))
  end

  test "should show pessoa_pagar" do
    get :show, id: @pessoa_pagar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa_pagar.to_param
    assert_response :success
  end

  test "should update pessoa_pagar" do
    put :update, id: @pessoa_pagar.to_param, pessoa_pagar: @pessoa_pagar.attributes
    assert_redirected_to pessoa_pagar_path(assigns(:pessoa_pagar))
  end

  test "should destroy pessoa_pagar" do
    assert_difference('PessoaPagar.count', -1) do
      delete :destroy, id: @pessoa_pagar.to_param
    end

    assert_redirected_to pessoa_pagars_path
  end
end
