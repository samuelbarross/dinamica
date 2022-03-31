require 'test_helper'

class PrefeiturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prefeitura = prefeituras(:one)
  end

  test "should get index" do
    get prefeituras_url
    assert_response :success
  end

  test "should get new" do
    get new_prefeitura_url
    assert_response :success
  end

  test "should create prefeitura" do
    assert_difference('Prefeitura.count') do
      post prefeituras_url, params: { prefeitura: { cidade_id: @prefeitura.cidade_id, nome: @prefeitura.nome } }
    end

    assert_redirected_to prefeitura_url(Prefeitura.last)
  end

  test "should show prefeitura" do
    get prefeitura_url(@prefeitura)
    assert_response :success
  end

  test "should get edit" do
    get edit_prefeitura_url(@prefeitura)
    assert_response :success
  end

  test "should update prefeitura" do
    patch prefeitura_url(@prefeitura), params: { prefeitura: { cidade_id: @prefeitura.cidade_id, nome: @prefeitura.nome } }
    assert_redirected_to prefeitura_url(@prefeitura)
  end

  test "should destroy prefeitura" do
    assert_difference('Prefeitura.count', -1) do
      delete prefeitura_url(@prefeitura)
    end

    assert_redirected_to prefeituras_url
  end
end
