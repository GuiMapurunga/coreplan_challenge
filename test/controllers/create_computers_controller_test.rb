require "test_helper"

class CreateComputersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_computer = create_computers(:one)
  end

  test "should get index" do
    get create_computers_url
    assert_response :success
  end

  test "should get new" do
    get new_create_computer_url
    assert_response :success
  end

  test "should create create_computer" do
    assert_difference("CreateComputer.count") do
      post create_computers_url, params: { create_computer: {  } }
    end

    assert_redirected_to create_computer_url(CreateComputer.last)
  end

  test "should show create_computer" do
    get create_computer_url(@create_computer)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_computer_url(@create_computer)
    assert_response :success
  end

  test "should update create_computer" do
    patch create_computer_url(@create_computer), params: { create_computer: {  } }
    assert_redirected_to create_computer_url(@create_computer)
  end

  test "should destroy create_computer" do
    assert_difference("CreateComputer.count", -1) do
      delete create_computer_url(@create_computer)
    end

    assert_redirected_to create_computers_url
  end
end
