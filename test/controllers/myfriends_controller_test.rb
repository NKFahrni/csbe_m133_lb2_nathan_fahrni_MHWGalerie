require 'test_helper'

class MyfriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get myfriends_show_url
    assert_response :success
  end

end
