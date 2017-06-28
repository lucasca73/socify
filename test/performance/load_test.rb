require 'test_helper'
require 'rails/performance_test_help'

class LoadTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { runs: 5, metrics: [:wall_time, :memory, :process_time, :objects] }

  # def setup
  #   create_million_users
  #   @all_users = User.all
  # end

  # test "login stress" do
  #   @all_users.each do |user|
  #     Thread.new {
  #       post '/users/sign_in', params: {email: user.email, password: user.password}
  #     }
  #   end
  # end

  # private
  # def create_million_users
  #   $i = 0
  #   $num = 2
  #
  #   while $i < $num  do
  #
  #     @password = "12345678"
  #     @email = "#{$i}@example.com"
  #     @confirmed_user = User.create(email: @email,
  #                                   password: @password,
  #                                   confirmed_at: "2016-02-01 11:35:56")
  #
  #     $i +=1
  #   end
  # end
end
