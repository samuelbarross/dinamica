require 'test_helper'

class AtividadeComplementaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atividade_complementar = atividade_complementares(:one)
  end

  test "should get index" do
    get atividade_complementares_url
    assert_response :success
  end

  test "should get new" do
    get new_atividade_complementar_url
    assert_response :success
  end

  test "should create atividade_complementar" do
    assert_difference('AtividadeComplementar.count') do
      post atividade_complementares_url, params: { atividade_complementar: { capitulo_id: @atividade_complementar.capitulo_id, descricao: @atividade_complementar.descricao, nome: @atividade_complementar.nome, tipo: @atividade_complementar.tipo, url: @atividade_complementar.url } }
    end

    assert_redirected_to atividade_complementar_url(AtividadeComplementar.last)
  end

  test "should show atividade_complementar" do
    get atividade_complementar_url(@atividade_complementar)
    assert_response :success
  end

  test "should get edit" do
    get edit_atividade_complementar_url(@atividade_complementar)
    assert_response :success
  end

  test "should update atividade_complementar" do
    patch atividade_complementar_url(@atividade_complementar), params: { atividade_complementar: { capitulo_id: @atividade_complementar.capitulo_id, descricao: @atividade_complementar.descricao, nome: @atividade_complementar.nome, tipo: @atividade_complementar.tipo, url: @atividade_complementar.url } }
    assert_redirected_to atividade_complementar_url(@atividade_complementar)
  end

  test "should destroy atividade_complementar" do
    assert_difference('AtividadeComplementar.count', -1) do
      delete atividade_complementar_url(@atividade_complementar)
    end

    assert_redirected_to atividade_complementares_url
  end
end
