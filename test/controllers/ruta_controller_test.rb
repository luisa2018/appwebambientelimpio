require 'test_helper'

class RutaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ruta_index_url
    assert_response :success
  end

end
