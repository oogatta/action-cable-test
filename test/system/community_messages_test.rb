require "application_system_test_case"

class CommunityMessagesTest < ApplicationSystemTestCase
  setup do
    @community_message = community_messages(:one)
  end

  test "visiting the index" do
    visit community_messages_url
    assert_selector "h1", text: "Community Messages"
  end

  test "creating a Community message" do
    visit community_messages_url
    click_on "New Community Message"

    fill_in "Body", with: @community_message.body
    fill_in "Community", with: @community_message.community_id
    fill_in "User", with: @community_message.user_id
    click_on "Create Community message"

    assert_text "Community message was successfully created"
    click_on "Back"
  end

  test "updating a Community message" do
    visit community_messages_url
    click_on "Edit", match: :first

    fill_in "Body", with: @community_message.body
    fill_in "Community", with: @community_message.community_id
    fill_in "User", with: @community_message.user_id
    click_on "Update Community message"

    assert_text "Community message was successfully updated"
    click_on "Back"
  end

  test "destroying a Community message" do
    visit community_messages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Community message was successfully destroyed"
  end
end
