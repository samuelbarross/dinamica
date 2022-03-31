require "application_system_test_case"

class PrefeiturasTest < ApplicationSystemTestCase
  setup do
    @prefeitura = prefeituras(:one)
  end

  test "visiting the index" do
    visit prefeituras_url
    assert_selector "h1", text: "Prefeituras"
  end

  test "creating a Prefeitura" do
    visit prefeituras_url
    click_on "New Prefeitura"

    fill_in "Cidade", with: @prefeitura.cidade_id
    fill_in "Nome", with: @prefeitura.nome
    click_on "Create Prefeitura"

    assert_text "Prefeitura was successfully created"
    click_on "Back"
  end

  test "updating a Prefeitura" do
    visit prefeituras_url
    click_on "Edit", match: :first

    fill_in "Cidade", with: @prefeitura.cidade_id
    fill_in "Nome", with: @prefeitura.nome
    click_on "Update Prefeitura"

    assert_text "Prefeitura was successfully updated"
    click_on "Back"
  end

  test "destroying a Prefeitura" do
    visit prefeituras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prefeitura was successfully destroyed"
  end
end
