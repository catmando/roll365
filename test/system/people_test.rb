require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Ok to contact", with: @person.OK_to_contact
    fill_in "Active", with: @person.active
    fill_in "Available", with: @person.available
    fill_in "Available on", with: @person.available_on
    fill_in "Company", with: @person.company_id
    fill_in "First name", with: @person.first_name
    fill_in "Last name", with: @person.last_name
    fill_in "Title", with: @person.title
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Ok to contact", with: @person.OK_to_contact
    fill_in "Active", with: @person.active
    fill_in "Available", with: @person.available
    fill_in "Available on", with: @person.available_on
    fill_in "Company", with: @person.company_id
    fill_in "First name", with: @person.first_name
    fill_in "Last name", with: @person.last_name
    fill_in "Title", with: @person.title
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
