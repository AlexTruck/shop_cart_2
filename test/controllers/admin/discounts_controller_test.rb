require 'test_helper'

class Admin::DiscountsControllerTest < ActionController::TestCase
  setup do
    @admin_discount = admin_discounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_discounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_discount" do
    assert_difference('Admin::Discount.count') do
      post :create, admin_discount: { amount: @admin_discount.amount, description: @admin_discount.description, ended_at: @admin_discount.ended_at, started_at: @admin_discount.started_at, title: @admin_discount.title, variant: @admin_discount.variant }
    end

    assert_redirected_to admin_discount_path(assigns(:admin_discount))
  end

  test "should show admin_discount" do
    get :show, id: @admin_discount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_discount
    assert_response :success
  end

  test "should update admin_discount" do
    patch :update, id: @admin_discount, admin_discount: { amount: @admin_discount.amount, description: @admin_discount.description, ended_at: @admin_discount.ended_at, started_at: @admin_discount.started_at, title: @admin_discount.title, variant: @admin_discount.variant }
    assert_redirected_to admin_discount_path(assigns(:admin_discount))
  end

  test "should destroy admin_discount" do
    assert_difference('Admin::Discount.count', -1) do
      delete :destroy, id: @admin_discount
    end

    assert_redirected_to admin_discounts_path
  end
end
