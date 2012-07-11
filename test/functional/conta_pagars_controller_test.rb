require 'test_helper'

class ContaPagarsControllerTest < ActionController::TestCase
  setup do
    @conta_pagar = conta_pagars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conta_pagars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta_pagar" do
    assert_difference('ContaPagar.count') do
      post :create, conta_pagar: @conta_pagar.attributes
    end

    assert_redirected_to conta_pagar_path(assigns(:conta_pagar))
  end

  test "should show conta_pagar" do
    get :show, id: @conta_pagar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conta_pagar.to_param
    assert_response :success
  end

  test "should update conta_pagar" do
    put :update, id: @conta_pagar.to_param, conta_pagar: @conta_pagar.attributes
    assert_redirected_to conta_pagar_path(assigns(:conta_pagar))
  end

  test "should destroy conta_pagar" do
    assert_difference('ContaPagar.count', -1) do
      delete :destroy, id: @conta_pagar.to_param
    end

    assert_redirected_to conta_pagars_path
  end
end
