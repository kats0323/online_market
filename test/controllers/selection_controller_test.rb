require 'test_helper'

class SelectionControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get selection_page_url
    assert_response :success
  end

end
