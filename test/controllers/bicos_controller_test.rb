require 'test_helper'

class BicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bico = bicos(:one)
  end

  test "should get index" do
    get bicos_url
    assert_response :success
  end

  test "should get new" do
    get new_bico_url
    assert_response :success
  end

  test "should create bico" do
    assert_difference('Bico.count') do
      post bicos_url, params: { bico: { color: @bico.color, dk_code: @bico.dk_code, flow_rate: @bico.flow_rate, ipe: @bico.ipe } }
    end

    assert_redirected_to bico_url(Bico.last)
  end

  test "should show bico" do
    get bico_url(@bico)
    assert_response :success
  end

  test "should get edit" do
    get edit_bico_url(@bico)
    assert_response :success
  end

  test "should update bico" do
    patch bico_url(@bico), params: { bico: { color: @bico.color, dk_code: @bico.dk_code, flow_rate: @bico.flow_rate, ipe: @bico.ipe } }
    assert_redirected_to bico_url(@bico)
  end

  test "should destroy bico" do
    assert_difference('Bico.count', -1) do
      delete bico_url(@bico)
    end

    assert_redirected_to bicos_url
  end
end
