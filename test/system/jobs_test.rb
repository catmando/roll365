require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Active", with: @job.active
    fill_in "Complete", with: @job.complete
    fill_in "Finished on", with: @job.finished_on
    fill_in "Name", with: @job.name
    fill_in "Purchase order", with: @job.purchase_order
    fill_in "Solution", with: @job.solution_id
    fill_in "Start on", with: @job.start_on
    fill_in "Time", with: @job.time
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Active", with: @job.active
    fill_in "Complete", with: @job.complete
    fill_in "Finished on", with: @job.finished_on
    fill_in "Name", with: @job.name
    fill_in "Purchase order", with: @job.purchase_order
    fill_in "Solution", with: @job.solution_id
    fill_in "Start on", with: @job.start_on
    fill_in "Time", with: @job.time
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
