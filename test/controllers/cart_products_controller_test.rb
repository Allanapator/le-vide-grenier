require 'test_helper'

class CartProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cart_products_show_url
    assert_response :success
  end

  test "should get index" do
    get cart_products_index_url
    assert_response :success
  end

  test "should get new" do
    get cart_products_new_url
    assert_response :success
  end

  test "should get create" do
    get cart_products_create_url
    assert_response :success
  end

  test "should get edit" do
    get cart_products_edit_url
    assert_response :success
  end

  test "should get update" do
    get cart_products_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cart_products_destroy_url
    assert_response :success
  end

end