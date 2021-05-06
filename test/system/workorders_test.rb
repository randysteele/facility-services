require "application_system_test_case"

class WorkordersTest < ApplicationSystemTestCase
  setup do
    @workorder = workorders(:one)
  end

  test "visiting the index" do
    visit workorders_url
    assert_selector "h1", text: "Workorders"
  end

  test "creating a Workorder" do
    visit workorders_url
    click_on "New Workorder"

    fill_in "Body", with: @workorder.body
    fill_in "Caller", with: @workorder.caller
    fill_in "Client", with: @workorder.client_id
    fill_in "Resolution", with: @workorder.resolution
    fill_in "Target date", with: @workorder.target_date
    fill_in "Technician", with: @workorder.technician
    click_on "Create Workorder"

    assert_text "Workorder was successfully created"
    click_on "Back"
  end

  test "updating a Workorder" do
    visit workorders_url
    click_on "Edit", match: :first

    fill_in "Body", with: @workorder.body
    fill_in "Caller", with: @workorder.caller
    fill_in "Client", with: @workorder.client_id
    fill_in "Resolution", with: @workorder.resolution
    fill_in "Target date", with: @workorder.target_date
    fill_in "Technician", with: @workorder.technician
    click_on "Update Workorder"

    assert_text "Workorder was successfully updated"
    click_on "Back"
  end

  test "destroying a Workorder" do
    visit workorders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workorder was successfully destroyed"
  end
end
