require "application_system_test_case"

class ArticlsTest < ApplicationSystemTestCase
  setup do
    @articl = articls(:one)
  end

  test "visiting the index" do
    visit articls_url
    assert_selector "h1", text: "Articls"
  end

  test "creating a Articl" do
    visit articls_url
    click_on "New Articl"

    fill_in "Description", with: @articl.description
    fill_in "Text", with: @articl.text
    fill_in "Title", with: @articl.title
    click_on "Create Articl"

    assert_text "Articl was successfully created"
    click_on "Back"
  end

  test "updating a Articl" do
    visit articls_url
    click_on "Edit", match: :first

    fill_in "Description", with: @articl.description
    fill_in "Text", with: @articl.text
    fill_in "Title", with: @articl.title
    click_on "Update Articl"

    assert_text "Articl was successfully updated"
    click_on "Back"
  end

  test "destroying a Articl" do
    visit articls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articl was successfully destroyed"
  end
end
