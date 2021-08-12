require 'test_helper'

class GolfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golfs_index_url
    assert_response :success
  end

end
