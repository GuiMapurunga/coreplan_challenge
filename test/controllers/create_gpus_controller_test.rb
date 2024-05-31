require "test_helper"

class CreateGpusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_gpu = create_gpus(:one)
  end

  test "should get index" do
    get create_gpus_url
    assert_response :success
  end

  test "should get new" do
    get new_create_gpu_url
    assert_response :success
  end

  test "should create create_gpu" do
    assert_difference("CreateGpu.count") do
      post create_gpus_url, params: { create_gpu: {  } }
    end

    assert_redirected_to create_gpu_url(CreateGpu.last)
  end

  test "should show create_gpu" do
    get create_gpu_url(@create_gpu)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_gpu_url(@create_gpu)
    assert_response :success
  end

  test "should update create_gpu" do
    patch create_gpu_url(@create_gpu), params: { create_gpu: {  } }
    assert_redirected_to create_gpu_url(@create_gpu)
  end

  test "should destroy create_gpu" do
    assert_difference("CreateGpu.count", -1) do
      delete create_gpu_url(@create_gpu)
    end

    assert_redirected_to create_gpus_url
  end
end
