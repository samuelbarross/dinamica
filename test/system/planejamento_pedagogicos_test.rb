require "application_system_test_case"

class PlanejamentoPedagogicosTest < ApplicationSystemTestCase
  setup do
    @planejamento_pedagogico = planejamento_pedagogicos(:one)
  end

  test "visiting the index" do
    visit planejamento_pedagogicos_url
    assert_selector "h1", text: "Planejamento Pedagogicos"
  end

  test "creating a Planejamento pedagogico" do
    visit planejamento_pedagogicos_url
    click_on "New Planejamento Pedagogico"

    fill_in "Capitulo", with: @planejamento_pedagogico.capitulo_id
    fill_in "Numero semana", with: @planejamento_pedagogico.numero_semana
    click_on "Create Planejamento pedagogico"

    assert_text "Planejamento pedagogico was successfully created"
    click_on "Back"
  end

  test "updating a Planejamento pedagogico" do
    visit planejamento_pedagogicos_url
    click_on "Edit", match: :first

    fill_in "Capitulo", with: @planejamento_pedagogico.capitulo_id
    fill_in "Numero semana", with: @planejamento_pedagogico.numero_semana
    click_on "Update Planejamento pedagogico"

    assert_text "Planejamento pedagogico was successfully updated"
    click_on "Back"
  end

  test "destroying a Planejamento pedagogico" do
    visit planejamento_pedagogicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planejamento pedagogico was successfully destroyed"
  end
end
