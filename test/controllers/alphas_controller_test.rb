require 'test_helper'

class AlphasControllerTest < ActionController::TestCase
  setup do
    @alpha = alphas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alphas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alpha" do
    assert_difference('Alpha.count') do
      post :create, alpha: { college: @alpha.college, degree: @alpha.degree, email: @alpha.email, name: @alpha.name }
    end

    assert_redirected_to alpha_path(assigns(:alpha))
  end

  test "should show alpha" do
    get :show, id: @alpha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alpha
    assert_response :success
  end

  test "should update alpha" do
    patch :update, id: @alpha, alpha: { college: @alpha.college, degree: @alpha.degree, email: @alpha.email, name: @alpha.name }
    assert_redirected_to alpha_path(assigns(:alpha))
  end

  test "should destroy alpha" do
    assert_difference('Alpha.count', -1) do
      delete :destroy, id: @alpha
    end

    assert_redirected_to alphas_path
  end
end
