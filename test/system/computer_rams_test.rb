require "application_system_test_case"

class ComputerRamsTest < ApplicationSystemTestCase
  setup do
    @computer_ram = computer_rams(:one)
  end

  test "visiting the index" do
    visit computer_rams_url
    assert_selector "h1", text: "Computer rams"
  end

  test "should create computer ram" do
    visit computer_rams_url
    click_on "New computer ram"

    click_on "Create Computer ram"

    assert_text "Computer ram was successfully created"
    click_on "Back"
  end

  test "should update Computer ram" do
    visit computer_ram_url(@computer_ram)
    click_on "Edit this computer ram", match: :first

    click_on "Update Computer ram"

    assert_text "Computer ram was successfully updated"
    click_on "Back"
  end

  test "should destroy Computer ram" do
    visit computer_ram_url(@computer_ram)
    click_on "Destroy this computer ram", match: :first

    assert_text "Computer ram was successfully destroyed"
  end
end
