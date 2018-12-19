require 'test_helper'

class TeacherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_index_url
    assert_response :success
  end

  test "should get new" do
    get teacher_new_url
    assert_response :success
  end

  test "should get create" do
    get teacher_create_url
    assert_response :success
  end

end
