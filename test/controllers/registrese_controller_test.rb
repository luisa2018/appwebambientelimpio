require 'test_helper'

class RegistreseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registrese_index_url
    assert_response :success
  end

end
