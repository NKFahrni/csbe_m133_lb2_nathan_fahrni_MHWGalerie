require 'test_helper'

class HelloworldControllerTest < ActionDispatch::IntegrationTest
  test "should get index$" do
    get helloworld_index$_url
    assert_response :success
  end

end
