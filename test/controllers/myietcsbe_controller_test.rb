require 'test_helper'

class MyietcsbeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get myietcsbe_show_url
    assert_response :success
  end

end
