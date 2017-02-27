require 'test_helper'

class HostSessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get host_session_new_url
    assert_response :success
  end

end
