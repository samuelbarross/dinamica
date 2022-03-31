require "application_system_test_case"

class AnoLetivosTest < ApplicationSystemTestCase
  setup do
    @ano_letivo = ano_letivos(:one)
  end

  test "visiting the index" do
    visit ano_letivos_url
    assert_selector "h1", text: "Ano Letivos"
  end

  test "creating a Ano letivo" do
    visit ano_letivos_url
    click_on "New Ano Letivo"

    fill_in "Ano", with: @ano_letivo.ano
    click_on "Create Ano letivo"

    assert_text "Ano letivo was successfully created"
    click_on "Back"
  end

  test "updating a Ano letivo" do
    visit ano_letivos_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @ano_letivo.ano
    click_on "Update Ano letivo"

    assert_text "Ano letivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Ano letivo" do
    visit ano_letivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ano letivo was successfully destroyed"
  end
end
