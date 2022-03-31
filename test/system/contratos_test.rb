require "application_system_test_case"

class ContratosTest < ApplicationSystemTestCase
  setup do
    @contrato = contratos(:one)
  end

  test "visiting the index" do
    visit contratos_url
    assert_selector "h1", text: "Contratos"
  end

  test "creating a Contrato" do
    visit contratos_url
    click_on "New Contrato"

    fill_in "Ano letivo", with: @contrato.ano_letivo_id
    fill_in "Prefeitura", with: @contrato.prefeitura_id
    click_on "Create Contrato"

    assert_text "Contrato was successfully created"
    click_on "Back"
  end

  test "updating a Contrato" do
    visit contratos_url
    click_on "Edit", match: :first

    fill_in "Ano letivo", with: @contrato.ano_letivo_id
    fill_in "Prefeitura", with: @contrato.prefeitura_id
    click_on "Update Contrato"

    assert_text "Contrato was successfully updated"
    click_on "Back"
  end

  test "destroying a Contrato" do
    visit contratos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contrato was successfully destroyed"
  end
end
