require "application_system_test_case"

class CreateCpusTest < ApplicationSystemTestCase
  setup do
    @create_cpu = create_cpus(:one)
  end

  test "visiting the index" do
    visit create_cpus_url
    assert_selector "h1", text: "Create cpus"
  end

  test "should create create cpu" do
    visit create_cpus_url
    click_on "New create cpu"

    click_on "Create Create cpu"

    assert_text "Create cpu was successfully created"
    click_on "Back"
  end

  test "should update Create cpu" do
    visit create_cpu_url(@create_cpu)
    click_on "Edit this create cpu", match: :first

    click_on "Update Create cpu"

    assert_text "Create cpu was successfully updated"
    click_on "Back"
  end

  test "should destroy Create cpu" do
    visit create_cpu_url(@create_cpu)
    click_on "Destroy this create cpu", match: :first

    assert_text "Create cpu was successfully destroyed"
  end
end
