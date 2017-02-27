require 'test_helper'

class SpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spaces_new_url
    assert_response :success
  end

end
