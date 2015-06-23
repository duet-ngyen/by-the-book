require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get show_category" do
    get :show_category
    assert_response :success
  end

end
