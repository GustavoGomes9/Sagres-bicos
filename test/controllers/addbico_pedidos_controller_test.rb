require 'test_helper'

class AddbicoPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addbico_pedido = addbico_pedidos(:one)
  end

  test "should get index" do
    get addbico_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_addbico_pedido_url
    assert_response :success
  end

  test "should create addbico_pedido" do
    assert_difference('AddbicoPedido.count') do
      post addbico_pedidos_url, params: { addbico_pedido: {  } }
    end

    assert_redirected_to addbico_pedido_url(AddbicoPedido.last)
  end

  test "should show addbico_pedido" do
    get addbico_pedido_url(@addbico_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_addbico_pedido_url(@addbico_pedido)
    assert_response :success
  end

  test "should update addbico_pedido" do
    patch addbico_pedido_url(@addbico_pedido), params: { addbico_pedido: {  } }
    assert_redirected_to addbico_pedido_url(@addbico_pedido)
  end

  test "should destroy addbico_pedido" do
    assert_difference('AddbicoPedido.count', -1) do
      delete addbico_pedido_url(@addbico_pedido)
    end

    assert_redirected_to addbico_pedidos_url
  end
end
