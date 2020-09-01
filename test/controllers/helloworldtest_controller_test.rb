require 'test_helper'

class HelloworldtestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get helloworldtest_index_url
    assert_response :success
  end

end
