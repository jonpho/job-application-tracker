require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "should create company" do
    visit companies_url
    click_on "New company"

    fill_in "Application status", with: @company.application_status
    fill_in "Company ats link", with: @company.company_ats_link
    fill_in "Company name", with: @company.company_name
    fill_in "Date applied", with: @company.date_applied
    fill_in "Job title", with: @company.job_title
    fill_in "Referral", with: @company.referral
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "should update Company" do
    visit company_url(@company)
    click_on "Edit this company", match: :first

    fill_in "Application status", with: @company.application_status
    fill_in "Company ats link", with: @company.company_ats_link
    fill_in "Company name", with: @company.company_name
    fill_in "Date applied", with: @company.date_applied
    fill_in "Job title", with: @company.job_title
    fill_in "Referral", with: @company.referral
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "should destroy Company" do
    visit company_url(@company)
    click_on "Destroy this company", match: :first

    assert_text "Company was successfully destroyed"
  end
end
