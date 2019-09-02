require 'test_helper'

class UsertasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get usertasks_create_url
    assert_response :success
  end

end
