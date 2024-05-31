require "application_system_test_case"

class CreateGpusTest < ApplicationSystemTestCase
  setup do
    @create_gpu = create_gpus(:one)
  end

  test "visiting the index" do
    visit create_gpus_url
    assert_selector "h1", text: "Create gpus"
  end

  test "should create create gpu" do
    visit create_gpus_url
    click_on "New create gpu"

    click_on "Create Create gpu"

    assert_text "Create gpu was successfully created"
    click_on "Back"
  end

  test "should update Create gpu" do
    visit create_gpu_url(@create_gpu)
    click_on "Edit this create gpu", match: :first

    click_on "Update Create gpu"

    assert_text "Create gpu was successfully updated"
    click_on "Back"
  end

  test "should destroy Create gpu" do
    visit create_gpu_url(@create_gpu)
    click_on "Destroy this create gpu", match: :first

    assert_text "Create gpu was successfully destroyed"
  end
end
