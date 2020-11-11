require 'test_helper'

class FavoriteProfilsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorite_profils_index_url
    assert_response :success
  end

  test "should get show" do
    get favorite_profils_show_url
    assert_response :success
  end

  test "should get edit" do
    get favorite_profils_edit_url
    assert_response :success
  end

  test "should get update" do
    get favorite_profils_update_url
    assert_response :success
  end

  test "should get new" do
    get favorite_profils_new_url
    assert_response :success
  end

  test "should get create" do
    get favorite_profils_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favorite_profils_destroy_url
    assert_response :success
  end

end
