require "application_system_test_case"

class CoordenacaoPedagogicasTest < ApplicationSystemTestCase
  setup do
    @coordenacao_pedagogica = coordenacao_pedagogicas(:one)
  end

  test "visiting the index" do
    visit coordenacao_pedagogicas_url
    assert_selector "h1", text: "Coordenacao Pedagogicas"
  end

  test "creating a Coordenacao pedagogica" do
    visit coordenacao_pedagogicas_url
    click_on "New Coordenacao Pedagogica"

    fill_in "Ano letivo", with: @coordenacao_pedagogica.ano_letivo_id
    fill_in "Contrato", with: @coordenacao_pedagogica.contrato_id
    fill_in "Prefeitura", with: @coordenacao_pedagogica.prefeitura_id
    fill_in "User", with: @coordenacao_pedagogica.user_id
    click_on "Create Coordenacao pedagogica"

    assert_text "Coordenacao pedagogica was successfully created"
    click_on "Back"
  end

  test "updating a Coordenacao pedagogica" do
    visit coordenacao_pedagogicas_url
    click_on "Edit", match: :first

    fill_in "Ano letivo", with: @coordenacao_pedagogica.ano_letivo_id
    fill_in "Contrato", with: @coordenacao_pedagogica.contrato_id
    fill_in "Prefeitura", with: @coordenacao_pedagogica.prefeitura_id
    fill_in "User", with: @coordenacao_pedagogica.user_id
    click_on "Update Coordenacao pedagogica"

    assert_text "Coordenacao pedagogica was successfully updated"
    click_on "Back"
  end

  test "destroying a Coordenacao pedagogica" do
    visit coordenacao_pedagogicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coordenacao pedagogica was successfully destroyed"
  end
end
