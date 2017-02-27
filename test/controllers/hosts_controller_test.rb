require 'test_helper'

class HostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hosts_index_url
    assert_response :success
  end

end
