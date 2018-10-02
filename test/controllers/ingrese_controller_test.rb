require 'test_helper'

class IngreseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingrese_index_url
    assert_response :success
  end

end
