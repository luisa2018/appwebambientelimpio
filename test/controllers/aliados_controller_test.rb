require 'test_helper'

class AliadosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aliados_index_url
    assert_response :success
  end

end
