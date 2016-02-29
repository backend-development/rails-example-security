require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should show login form' do
    get sessions_new_url
    assert_response :success
  end

  test 'should log in user' do
    get sessions_create_url, params: {
      email: @user.email,
      password: @user.password
    }
    assert_redirected_to root_url
    assert_equal @user.id, session['user_id']
  end

  test 'should log in user without password' do
    get sessions_create_url, params: {
      email: @user.email,
      password: 'not the real password'
    }
    assert_equal nil, session['user_id']
  end

  test 'should log out user (if logged in)' do
    get sessions_create_url, params: {
      email: @user.email,
      password: @user.password
    }
    get sessions_destroy_url
    assert_redirected_to root_url
    assert_equal nil, session['user_id']
  end
end
