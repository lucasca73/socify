require 'test_helper'
require 'rails/performance_test_help'

class LoginTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { runs: 5, metrics: [:wall_time, :memory, :process_time, :objects] }

  def setup

  end

  test "signup user" do

    @password = "12345678"
    @email = "#{rand(50000)}@example.com"
    @confirmed_user = User.create(email: @email,
                                  password: @password,
                                  confirmed_at: "2016-02-01 11:35:56")

    # User.find_by(email: @confirmed_user.email)

    # @user_params = {email: "email1", password: @user.password}
    # get '/users/sign_in', params:
  end

  test "login user" do
    @user = users(:alice)
    # Warden.test_mode!
    # login_as(@user, scope: :user)
    post '/users/sign_in', params: {email: @user.email, password: @user.password}
  end

  # test "login stress" do
  #
  # end

end
