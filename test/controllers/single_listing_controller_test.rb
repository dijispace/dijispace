require 'test_helper'

class SingleListingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get single_listing_index_url
    assert_response :success
  end

end
