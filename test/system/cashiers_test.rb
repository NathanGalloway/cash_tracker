require "application_system_test_case"

class CashiersTest < ApplicationSystemTestCase
  setup do
    @cashier = cashiers(:one)
  end

  test "visiting the index" do
    visit cashiers_url
    assert_selector "h1", text: "Cashiers"
  end

  test "should create cashier" do
    visit cashiers_url
    click_on "New cashier"

    fill_in "First name", with: @cashier.first_name
    fill_in "Last name", with: @cashier.last_name
    fill_in "Operator", with: @cashier.operator_id
    click_on "Create Cashier"

    assert_text "Cashier was successfully created"
    click_on "Back"
  end

  test "should update Cashier" do
    visit cashier_url(@cashier)
    click_on "Edit this cashier", match: :first

    fill_in "First name", with: @cashier.first_name
    fill_in "Last name", with: @cashier.last_name
    fill_in "Operator", with: @cashier.operator_id
    click_on "Update Cashier"

    assert_text "Cashier was successfully updated"
    click_on "Back"
  end

  test "should destroy Cashier" do
    visit cashier_url(@cashier)
    click_on "Destroy this cashier", match: :first

    assert_text "Cashier was successfully destroyed"
  end
end
