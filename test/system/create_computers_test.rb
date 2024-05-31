require "application_system_test_case"

class CreateComputersTest < ApplicationSystemTestCase
  setup do
    @create_computer = create_computers(:one)
  end

  test "visiting the index" do
    visit create_computers_url
    assert_selector "h1", text: "Create computers"
  end

  test "should create create computer" do
    visit create_computers_url
    click_on "New create computer"

    click_on "Create Create computer"

    assert_text "Create computer was successfully created"
    click_on "Back"
  end

  test "should update Create computer" do
    visit create_computer_url(@create_computer)
    click_on "Edit this create computer", match: :first

    click_on "Update Create computer"

    assert_text "Create computer was successfully updated"
    click_on "Back"
  end

  test "should destroy Create computer" do
    visit create_computer_url(@create_computer)
    click_on "Destroy this create computer", match: :first

    assert_text "Create computer was successfully destroyed"
  end
end
