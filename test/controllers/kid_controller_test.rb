require 'test_helper'

class KidControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kid_new_url
    assert_response :success
  end

  test "should get create" do
    get kid_create_url
    assert_response :success
  end

end
