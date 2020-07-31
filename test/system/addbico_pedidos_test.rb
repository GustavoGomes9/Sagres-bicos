require "application_system_test_case"

class AddbicoPedidosTest < ApplicationSystemTestCase
  setup do
    @addbico_pedido = addbico_pedidos(:one)
  end

  test "visiting the index" do
    visit addbico_pedidos_url
    assert_selector "h1", text: "Addbico Pedidos"
  end

  test "creating a Addbico pedido" do
    visit addbico_pedidos_url
    click_on "New Addbico Pedido"

    click_on "Create Addbico pedido"

    assert_text "Addbico pedido was successfully created"
    click_on "Back"
  end

  test "updating a Addbico pedido" do
    visit addbico_pedidos_url
    click_on "Edit", match: :first

    click_on "Update Addbico pedido"

    assert_text "Addbico pedido was successfully updated"
    click_on "Back"
  end

  test "destroying a Addbico pedido" do
    visit addbico_pedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Addbico pedido was successfully destroyed"
  end
end
