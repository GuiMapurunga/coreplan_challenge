require "application_system_test_case"

class CreateComputerRamsTest < ApplicationSystemTestCase
  setup do
    @create_computer_ram = create_computer_rams(:one)
  end

  test "visiting the index" do
    visit create_computer_rams_url
    assert_selector "h1", text: "Create computer rams"
  end

  test "should create create computer ram" do
    visit create_computer_rams_url
    click_on "New create computer ram"

    click_on "Create Create computer ram"

    assert_text "Create computer ram was successfully created"
    click_on "Back"
  end

  test "should update Create computer ram" do
    visit create_computer_ram_url(@create_computer_ram)
    click_on "Edit this create computer ram", match: :first

    click_on "Update Create computer ram"

    assert_text "Create computer ram was successfully updated"
    click_on "Back"
  end

  test "should destroy Create computer ram" do
    visit create_computer_ram_url(@create_computer_ram)
    click_on "Destroy this create computer ram", match: :first

    assert_text "Create computer ram was successfully destroyed"
  end
end
