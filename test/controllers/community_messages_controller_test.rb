require 'test_helper'

class CommunityMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_message = community_messages(:one)
  end

  test "should get index" do
    get community_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_community_message_url
    assert_response :success
  end

  test "should create community_message" do
    assert_difference('CommunityMessage.count') do
      post community_messages_url, params: { community_message: { body: @community_message.body, community_id: @community_message.community_id, user_id: @community_message.user_id } }
    end

    assert_redirected_to community_message_url(CommunityMessage.last)
  end

  test "should show community_message" do
    get community_message_url(@community_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_message_url(@community_message)
    assert_response :success
  end

  test "should update community_message" do
    patch community_message_url(@community_message), params: { community_message: { body: @community_message.body, community_id: @community_message.community_id, user_id: @community_message.user_id } }
    assert_redirected_to community_message_url(@community_message)
  end

  test "should destroy community_message" do
    assert_difference('CommunityMessage.count', -1) do
      delete community_message_url(@community_message)
    end

    assert_redirected_to community_messages_url
  end
end
