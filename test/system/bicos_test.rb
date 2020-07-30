require "application_system_test_case"

class BicosTest < ApplicationSystemTestCase
  setup do
    @bico = bicos(:one)
  end

  test "visiting the index" do
    visit bicos_url
    assert_selector "h1", text: "Bicos"
  end

  test "creating a Bico" do
    visit bicos_url
    click_on "New Bico"

    fill_in "Color", with: @bico.color
    fill_in "Dk code", with: @bico.dk_code
    fill_in "Flow rate", with: @bico.flow_rate
    fill_in "Ipe", with: @bico.ipe
    click_on "Create Bico"

    assert_text "Bico was successfully created"
    click_on "Back"
  end

  test "updating a Bico" do
    visit bicos_url
    click_on "Edit", match: :first

    fill_in "Color", with: @bico.color
    fill_in "Dk code", with: @bico.dk_code
    fill_in "Flow rate", with: @bico.flow_rate
    fill_in "Ipe", with: @bico.ipe
    click_on "Update Bico"

    assert_text "Bico was successfully updated"
    click_on "Back"
  end

  test "destroying a Bico" do
    visit bicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bico was successfully destroyed"
  end
end
