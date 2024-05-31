require "test_helper"

class CreateCpusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_cpu = create_cpus(:one)
  end

  test "should get index" do
    get create_cpus_url
    assert_response :success
  end

  test "should get new" do
    get new_create_cpu_url
    assert_response :success
  end

  test "should create create_cpu" do
    assert_difference("CreateCpu.count") do
      post create_cpus_url, params: { create_cpu: {  } }
    end

    assert_redirected_to create_cpu_url(CreateCpu.last)
  end

  test "should show create_cpu" do
    get create_cpu_url(@create_cpu)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_cpu_url(@create_cpu)
    assert_response :success
  end

  test "should update create_cpu" do
    patch create_cpu_url(@create_cpu), params: { create_cpu: {  } }
    assert_redirected_to create_cpu_url(@create_cpu)
  end

  test "should destroy create_cpu" do
    assert_difference("CreateCpu.count", -1) do
      delete create_cpu_url(@create_cpu)
    end

    assert_redirected_to create_cpus_url
  end
end
