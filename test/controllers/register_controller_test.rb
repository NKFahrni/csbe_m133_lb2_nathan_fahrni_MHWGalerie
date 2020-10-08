require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get :new
    assert_response :success
  end

end
