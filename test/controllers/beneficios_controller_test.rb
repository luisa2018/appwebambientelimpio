require 'test_helper'

class BeneficiosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beneficios_index_url
    assert_response :success
  end

end
