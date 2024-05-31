require "test_helper"

class ComputerRamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computer_ram = computer_rams(:one)
  end

  test "should get index" do
    get computer_rams_url
    assert_response :success
  end

  test "should get new" do
    get new_computer_ram_url
    assert_response :success
  end

  test "should create computer_ram" do
    assert_difference("ComputerRam.count") do
      post computer_rams_url, params: { computer_ram: {  } }
    end

    assert_redirected_to computer_ram_url(ComputerRam.last)
  end

  test "should show computer_ram" do
    get computer_ram_url(@computer_ram)
    assert_response :success
  end

  test "should get edit" do
    get edit_computer_ram_url(@computer_ram)
    assert_response :success
  end

  test "should update computer_ram" do
    patch computer_ram_url(@computer_ram), params: { computer_ram: {  } }
    assert_redirected_to computer_ram_url(@computer_ram)
  end

  test "should destroy computer_ram" do
    assert_difference("ComputerRam.count", -1) do
      delete computer_ram_url(@computer_ram)
    end

    assert_redirected_to computer_rams_url
  end
end
