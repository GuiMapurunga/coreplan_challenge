require "test_helper"

class CreateComputerRamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_computer_ram = create_computer_rams(:one)
  end

  test "should get index" do
    get create_computer_rams_url
    assert_response :success
  end

  test "should get new" do
    get new_create_computer_ram_url
    assert_response :success
  end

  test "should create create_computer_ram" do
    assert_difference("CreateComputerRam.count") do
      post create_computer_rams_url, params: { create_computer_ram: {  } }
    end

    assert_redirected_to create_computer_ram_url(CreateComputerRam.last)
  end

  test "should show create_computer_ram" do
    get create_computer_ram_url(@create_computer_ram)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_computer_ram_url(@create_computer_ram)
    assert_response :success
  end

  test "should update create_computer_ram" do
    patch create_computer_ram_url(@create_computer_ram), params: { create_computer_ram: {  } }
    assert_redirected_to create_computer_ram_url(@create_computer_ram)
  end

  test "should destroy create_computer_ram" do
    assert_difference("CreateComputerRam.count", -1) do
      delete create_computer_ram_url(@create_computer_ram)
    end

    assert_redirected_to create_computer_rams_url
  end
end
