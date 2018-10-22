require 'test_helper'

class ReportarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reportar = reportars(:one)
  end

  test "should get index" do
    get reportars_url
    assert_response :success
  end

  test "should get new" do
    get new_reportar_url
    assert_response :success
  end

  test "should create reportar" do
    assert_difference('Reportar.count') do
      post reportars_url, params: { reportar: { fecha: @reportar.fecha, imagen: @reportar.imagen, obsrvacion: @reportar.obsrvacion, ubicacion: @reportar.ubicacion } }
    end

    assert_redirected_to reportar_url(Reportar.last)
  end

  test "should show reportar" do
    get reportar_url(@reportar)
    assert_response :success
  end

  test "should get edit" do
    get edit_reportar_url(@reportar)
    assert_response :success
  end

  test "should update reportar" do
    patch reportar_url(@reportar), params: { reportar: { fecha: @reportar.fecha, imagen: @reportar.imagen, obsrvacion: @reportar.obsrvacion, ubicacion: @reportar.ubicacion } }
    assert_redirected_to reportar_url(@reportar)
  end

  test "should destroy reportar" do
    assert_difference('Reportar.count', -1) do
      delete reportar_url(@reportar)
    end

    assert_redirected_to reportars_url
  end
end
