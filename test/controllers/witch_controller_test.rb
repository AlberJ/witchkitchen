require 'test_helper'

class WitchControllerTest < ActionDispatch::IntegrationTest
  test "should get myrecipes" do
    get witch_myrecipes_url
    assert_response :success
  end

end
