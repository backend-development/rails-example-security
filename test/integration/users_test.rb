require 'test_helper'

class UsersTest < ActionDispatch::IntegrationTest
  fixtures :users

  test 'users are listed publicly' do
    get '/users'
    assert_response :success

    assert_select 'td', users(:one).email
  end
end
