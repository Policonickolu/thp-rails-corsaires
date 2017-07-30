require 'test_helper'

class CorsairsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get corsairs_new_url
    assert_response :success
  end

end
