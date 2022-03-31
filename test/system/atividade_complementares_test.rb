require "application_system_test_case"

class AtividadeComplementaresTest < ApplicationSystemTestCase
  setup do
    @atividade_complementar = atividade_complementares(:one)
  end

  test "visiting the index" do
    visit atividade_complementares_url
    assert_selector "h1", text: "Atividade Complementares"
  end

  test "creating a Atividade complementar" do
    visit atividade_complementares_url
    click_on "New Atividade Complementar"

    fill_in "Capitulo", with: @atividade_complementar.capitulo_id
    fill_in "Descricao", with: @atividade_complementar.descricao
    fill_in "Nome", with: @atividade_complementar.nome
    fill_in "Tipo", with: @atividade_complementar.tipo
    fill_in "Url", with: @atividade_complementar.url
    click_on "Create Atividade complementar"

    assert_text "Atividade complementar was successfully created"
    click_on "Back"
  end

  test "updating a Atividade complementar" do
    visit atividade_complementares_url
    click_on "Edit", match: :first

    fill_in "Capitulo", with: @atividade_complementar.capitulo_id
    fill_in "Descricao", with: @atividade_complementar.descricao
    fill_in "Nome", with: @atividade_complementar.nome
    fill_in "Tipo", with: @atividade_complementar.tipo
    fill_in "Url", with: @atividade_complementar.url
    click_on "Update Atividade complementar"

    assert_text "Atividade complementar was successfully updated"
    click_on "Back"
  end

  test "destroying a Atividade complementar" do
    visit atividade_complementares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atividade complementar was successfully destroyed"
  end
end
