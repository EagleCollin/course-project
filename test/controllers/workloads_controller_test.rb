require "test_helper"

class WorkloadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workload = workloads(:one)
  end

  test "should get index" do
    get workloads_url
    assert_response :success
  end

  test "should get new" do
    get new_workload_url
    assert_response :success
  end

  test "should create workload" do
    assert_difference("Workload.count") do
      post workloads_url, params: { workload: { course_id: @workload.course_id, student_id: @workload.student_id } }
    end

    assert_redirected_to workload_url(Workload.last)
  end

  test "should show workload" do
    get workload_url(@workload)
    assert_response :success
  end

  test "should get edit" do
    get edit_workload_url(@workload)
    assert_response :success
  end

  test "should update workload" do
    patch workload_url(@workload), params: { workload: { course_id: @workload.course_id, student_id: @workload.student_id } }
    assert_redirected_to workload_url(@workload)
  end

  test "should destroy workload" do
    assert_difference("Workload.count", -1) do
      delete workload_url(@workload)
    end

    assert_redirected_to workloads_url
  end
end
