require 'test_helper'

class UserTest < ActiveSupport::TestCase #SRC: https://3rd-edition.railstutorial.org/book/modeling_users

  def after_setup
    @user = User.new(name: "Example User", username: "ExampleUserName", password: "Example", password_confirmation: "Example")
  end
  test "password should be presenent(notNull)" do
    @user.password = @user.password_confirmation = " " * 7
    assert @user.valid?
  end
end
