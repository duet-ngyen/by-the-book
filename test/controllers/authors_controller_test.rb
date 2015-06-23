require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase
  test "should get show_author" do
    get :show_author
    assert_response :success
  end

end
