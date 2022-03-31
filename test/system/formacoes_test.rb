require "application_system_test_case"

class FormacoesTest < ApplicationSystemTestCase
  setup do
    @formacao = formacoes(:one)
  end

  test "visiting the index" do
    visit formacoes_url
    assert_selector "h1", text: "Formacoes"
  end

  test "creating a Formacao" do
    visit formacoes_url
    click_on "New Formacao"

    fill_in "Capitulo", with: @formacao.capitulo_id
    fill_in "Descricao", with: @formacao.descricao
    fill_in "Nome", with: @formacao.nome
    fill_in "Url", with: @formacao.url
    click_on "Create Formacao"

    assert_text "Formacao was successfully created"
    click_on "Back"
  end

  test "updating a Formacao" do
    visit formacoes_url
    click_on "Edit", match: :first

    fill_in "Capitulo", with: @formacao.capitulo_id
    fill_in "Descricao", with: @formacao.descricao
    fill_in "Nome", with: @formacao.nome
    fill_in "Url", with: @formacao.url
    click_on "Update Formacao"

    assert_text "Formacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Formacao" do
    visit formacoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formacao was successfully destroyed"
  end
end
