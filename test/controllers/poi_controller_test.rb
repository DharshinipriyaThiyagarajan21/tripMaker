require 'test_helper'

class PoiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get poi_index_url
    assert_response :success
  end

end
