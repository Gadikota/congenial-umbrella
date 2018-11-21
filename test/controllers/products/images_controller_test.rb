require 'test_helper'

class Products::ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get products_images_create_url
    assert_response :success
  end

  test "should get destroy" do
    get products_images_destroy_url
    assert_response :success
  end

  test "should get show" do
    get products_images_show_url
    assert_response :success
  end

  test "should get index" do
    get products_images_index_url
    assert_response :success
  end

end
