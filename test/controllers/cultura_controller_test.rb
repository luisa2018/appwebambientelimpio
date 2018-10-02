require 'test_helper'

class CulturaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cultura_index_url
    assert_response :success
  end

end
