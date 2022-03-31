require 'test_helper'

class CoordenacaoPedagogicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordenacao_pedagogica = coordenacao_pedagogicas(:one)
  end

  test "should get index" do
    get coordenacao_pedagogicas_url
    assert_response :success
  end

  test "should get new" do
    get new_coordenacao_pedagogica_url
    assert_response :success
  end

  test "should create coordenacao_pedagogica" do
    assert_difference('CoordenacaoPedagogica.count') do
      post coordenacao_pedagogicas_url, params: { coordenacao_pedagogica: { ano_letivo_id: @coordenacao_pedagogica.ano_letivo_id, contrato_id: @coordenacao_pedagogica.contrato_id, prefeitura_id: @coordenacao_pedagogica.prefeitura_id, user_id: @coordenacao_pedagogica.user_id } }
    end

    assert_redirected_to coordenacao_pedagogica_url(CoordenacaoPedagogica.last)
  end

  test "should show coordenacao_pedagogica" do
    get coordenacao_pedagogica_url(@coordenacao_pedagogica)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordenacao_pedagogica_url(@coordenacao_pedagogica)
    assert_response :success
  end

  test "should update coordenacao_pedagogica" do
    patch coordenacao_pedagogica_url(@coordenacao_pedagogica), params: { coordenacao_pedagogica: { ano_letivo_id: @coordenacao_pedagogica.ano_letivo_id, contrato_id: @coordenacao_pedagogica.contrato_id, prefeitura_id: @coordenacao_pedagogica.prefeitura_id, user_id: @coordenacao_pedagogica.user_id } }
    assert_redirected_to coordenacao_pedagogica_url(@coordenacao_pedagogica)
  end

  test "should destroy coordenacao_pedagogica" do
    assert_difference('CoordenacaoPedagogica.count', -1) do
      delete coordenacao_pedagogica_url(@coordenacao_pedagogica)
    end

    assert_redirected_to coordenacao_pedagogicas_url
  end
end
