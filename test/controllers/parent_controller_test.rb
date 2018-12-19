require 'test_helper'

class ParentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parent_index_url
    assert_response :success
  end

  test "should get new" do
    get parent_new_url
    assert_response :success
  end

  test "should get create" do
    get parent_create_url
    assert_response :success
  end

end
