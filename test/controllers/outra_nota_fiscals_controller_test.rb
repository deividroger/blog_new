require 'test_helper'

class OutraNotaFiscalsControllerTest < ActionController::TestCase
  setup do
    @outra_nota_fiscal = outra_nota_fiscals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outra_nota_fiscals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outra_nota_fiscal" do
    assert_difference('OutraNotaFiscal.count') do
      post :create, outra_nota_fiscal: { cliente: @outra_nota_fiscal.cliente, endereco: @outra_nota_fiscal.endereco }
    end

    assert_redirected_to outra_nota_fiscal_path(assigns(:outra_nota_fiscal))
  end

  test "should show outra_nota_fiscal" do
    get :show, id: @outra_nota_fiscal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outra_nota_fiscal
    assert_response :success
  end

  test "should update outra_nota_fiscal" do
    patch :update, id: @outra_nota_fiscal, outra_nota_fiscal: { cliente: @outra_nota_fiscal.cliente, endereco: @outra_nota_fiscal.endereco }
    assert_redirected_to outra_nota_fiscal_path(assigns(:outra_nota_fiscal))
  end

  test "should destroy outra_nota_fiscal" do
    assert_difference('OutraNotaFiscal.count', -1) do
      delete :destroy, id: @outra_nota_fiscal
    end

    assert_redirected_to outra_nota_fiscals_path
  end
end
