require 'test_helper'

class ReportarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reportar_index_url
    assert_response :success
  end

end
