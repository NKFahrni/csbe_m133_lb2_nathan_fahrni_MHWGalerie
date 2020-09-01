require 'test_helper'

class MyswitzerlandControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get myswitzerland_show_url
    assert_response :success
  end

end
