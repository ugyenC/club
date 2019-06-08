require "application_system_test_case"

class NewspostsTest < ApplicationSystemTestCase
  setup do
    @newspost = newsposts(:one)
  end

  test "visiting the index" do
    visit newsposts_url
    assert_selector "h1", text: "Newsposts"
  end

  test "creating a Newspost" do
    visit newsposts_url
    click_on "New Newspost"

    fill_in "Body", with: @newspost.body
    fill_in "Text", with: @newspost.text
    fill_in "Title", with: @newspost.title
    fill_in "User", with: @newspost.user_id
    click_on "Create Newspost"

    assert_text "Newspost was successfully created"
    click_on "Back"
  end

  test "updating a Newspost" do
    visit newsposts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @newspost.body
    fill_in "Text", with: @newspost.text
    fill_in "Title", with: @newspost.title
    fill_in "User", with: @newspost.user_id
    click_on "Update Newspost"

    assert_text "Newspost was successfully updated"
    click_on "Back"
  end

  test "destroying a Newspost" do
    visit newsposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newspost was successfully destroyed"
  end
end
