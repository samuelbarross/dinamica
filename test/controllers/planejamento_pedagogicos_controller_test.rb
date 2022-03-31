require 'test_helper'

class PlanejamentoPedagogicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planejamento_pedagogico = planejamento_pedagogicos(:one)
  end

  test "should get index" do
    get planejamento_pedagogicos_url
    assert_response :success
  end

  test "should get new" do
    get new_planejamento_pedagogico_url
    assert_response :success
  end

  test "should create planejamento_pedagogico" do
    assert_difference('PlanejamentoPedagogico.count') do
      post planejamento_pedagogicos_url, params: { planejamento_pedagogico: { capitulo_id: @planejamento_pedagogico.capitulo_id, numero_semana: @planejamento_pedagogico.numero_semana } }
    end

    assert_redirected_to planejamento_pedagogico_url(PlanejamentoPedagogico.last)
  end

  test "should show planejamento_pedagogico" do
    get planejamento_pedagogico_url(@planejamento_pedagogico)
    assert_response :success
  end

  test "should get edit" do
    get edit_planejamento_pedagogico_url(@planejamento_pedagogico)
    assert_response :success
  end

  test "should update planejamento_pedagogico" do
    patch planejamento_pedagogico_url(@planejamento_pedagogico), params: { planejamento_pedagogico: { capitulo_id: @planejamento_pedagogico.capitulo_id, numero_semana: @planejamento_pedagogico.numero_semana } }
    assert_redirected_to planejamento_pedagogico_url(@planejamento_pedagogico)
  end

  test "should destroy planejamento_pedagogico" do
    assert_difference('PlanejamentoPedagogico.count', -1) do
      delete planejamento_pedagogico_url(@planejamento_pedagogico)
    end

    assert_redirected_to planejamento_pedagogicos_url
  end
end
