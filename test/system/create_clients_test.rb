require "application_system_test_case"

class CreateClientsTest < ApplicationSystemTestCase
  setup do
    @create_client = create_clients(:one)
  end

  test "visiting the index" do
    visit create_clients_url
    assert_selector "h1", text: "Create clients"
  end

  test "should create create client" do
    visit create_clients_url
    click_on "New create client"

    click_on "Create Create client"

    assert_text "Create client was successfully created"
    click_on "Back"
  end

  test "should update Create client" do
    visit create_client_url(@create_client)
    click_on "Edit this create client", match: :first

    click_on "Update Create client"

    assert_text "Create client was successfully updated"
    click_on "Back"
  end

  test "should destroy Create client" do
    visit create_client_url(@create_client)
    click_on "Destroy this create client", match: :first

    assert_text "Create client was successfully destroyed"
  end
end
