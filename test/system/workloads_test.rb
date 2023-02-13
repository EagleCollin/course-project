require "application_system_test_case"

class WorkloadsTest < ApplicationSystemTestCase
  setup do
    @workload = workloads(:one)
  end

  test "visiting the index" do
    visit workloads_url
    assert_selector "h1", text: "Workloads"
  end

  test "should create workload" do
    visit workloads_url
    click_on "New workload"

    fill_in "Course", with: @workload.course_id
    fill_in "Student", with: @workload.student_id
    click_on "Create Workload"

    assert_text "Workload was successfully created"
    click_on "Back"
  end

  test "should update Workload" do
    visit workload_url(@workload)
    click_on "Edit this workload", match: :first

    fill_in "Course", with: @workload.course_id
    fill_in "Student", with: @workload.student_id
    click_on "Update Workload"

    assert_text "Workload was successfully updated"
    click_on "Back"
  end

  test "should destroy Workload" do
    visit workload_url(@workload)
    click_on "Destroy this workload", match: :first

    assert_text "Workload was successfully destroyed"
  end
end
