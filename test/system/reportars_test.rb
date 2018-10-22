require "application_system_test_case"

class ReportarsTest < ApplicationSystemTestCase
  setup do
    @reportar = reportars(:one)
  end

  test "visiting the index" do
    visit reportars_url
    assert_selector "h1", text: "Reportars"
  end

  test "creating a Reportar" do
    visit reportars_url
    click_on "New Reportar"

    fill_in "Fecha", with: @reportar.fecha
    fill_in "Imagen", with: @reportar.imagen
    fill_in "Obsrvacion", with: @reportar.obsrvacion
    fill_in "Ubicacion", with: @reportar.ubicacion
    click_on "Create Reportar"

    assert_text "Reportar was successfully created"
    click_on "Back"
  end

  test "updating a Reportar" do
    visit reportars_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @reportar.fecha
    fill_in "Imagen", with: @reportar.imagen
    fill_in "Obsrvacion", with: @reportar.obsrvacion
    fill_in "Ubicacion", with: @reportar.ubicacion
    click_on "Update Reportar"

    assert_text "Reportar was successfully updated"
    click_on "Back"
  end

  test "destroying a Reportar" do
    visit reportars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reportar was successfully destroyed"
  end
end
