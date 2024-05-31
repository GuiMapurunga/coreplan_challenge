require "application_system_test_case"

class CpusTest < ApplicationSystemTestCase
  setup do
    @cpu = cpus(:one)
  end

  test "visiting the index" do
    visit cpus_url
    assert_selector "h1", text: "Cpus"
  end

  test "should create cpu" do
    visit cpus_url
    click_on "New cpu"

    click_on "Create Cpu"

    assert_text "Cpu was successfully created"
    click_on "Back"
  end

  test "should update Cpu" do
    visit cpu_url(@cpu)
    click_on "Edit this cpu", match: :first

    click_on "Update Cpu"

    assert_text "Cpu was successfully updated"
    click_on "Back"
  end

  test "should destroy Cpu" do
    visit cpu_url(@cpu)
    click_on "Destroy this cpu", match: :first

    assert_text "Cpu was successfully destroyed"
  end
end
