require 'test_helper'

class FacilityControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get facility_create_url
    assert_response :success
  end

end
