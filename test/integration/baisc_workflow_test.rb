require 'test_helper'

class BaiscWorkflowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "uses bootstrap" do
    get_via_redirect '/'
    assert_select 'div.container'
  end

  test "has navbar" do
    get_via_redirect '/'
    assert_select 'nav.navbar.navbar-default'
  end

  test "signup" do
    get '/'
    assert redirect?
    follow_redirect!
    post_via_redirect '/users', 'user[name]' => 'ExampleUser', 'user[email]' => 'user@example.com', 'user[password]' => 'test1234', 'user[password_confirmation]' => 'test1234'
    assert_response :success
    assert_select 'div.bg-info',  'Welcome! You have signed up successfully.'
    assert_select 'h1',  'List of gifts'
  end

  test "login" do
    log_in! users(:one).email, 'passw0rd!'
  end

  test "protected list of gifts" do
    get_via_redirect '/gifts'
    assert_select 'h1', 'Log in'
  end

  test "list of gifts" do
    log_in! users(:one).email, 'passw0rd!'
    get '/gifts'
    assert_response :success
    assert_select 'h1',  'List of gifts'
    #p response
    assert_select 'td', 4 * Gift.count
  end

  private
    def log_in!(email, password)
      post_via_redirect '/users/sign_in', 'user[email]' => email, 'user[password]' => password
      assert_response :success
      assert_select 'div.bg-info',  'Signed in successfully.'
    end
end
