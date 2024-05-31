require "test_helper"

class CreateClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_client = create_clients(:one)
  end

  test "should get index" do
    get create_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_create_client_url
    assert_response :success
  end

  test "should create create_client" do
    assert_difference("CreateClient.count") do
      post create_clients_url, params: { create_client: {  } }
    end

    assert_redirected_to create_client_url(CreateClient.last)
  end

  test "should show create_client" do
    get create_client_url(@create_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_client_url(@create_client)
    assert_response :success
  end

  test "should update create_client" do
    patch create_client_url(@create_client), params: { create_client: {  } }
    assert_redirected_to create_client_url(@create_client)
  end

  test "should destroy create_client" do
    assert_difference("CreateClient.count", -1) do
      delete create_client_url(@create_client)
    end

    assert_redirected_to create_clients_url
  end
end
