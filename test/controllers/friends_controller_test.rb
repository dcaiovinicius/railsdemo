require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:one)
    @friend = friends(:one)
  end

  test "should get index" do
    get friends_url
    assert_response :success
  end

  test "should show friend" do
    get friend_url(@friend)
    assert_response :success
  end

  test "should get new" do
    get new_friend_url
    assert_response :success
  end


  test "should create friend" do
    assert_difference('Friend.count', 1) do
      post friends_url, params: {
        friend: { first_name: @friend.first_name, email: @friend.email, phone: @friend.phone, description: @friend.description, user_id: @friend.id } }
    end

    assert_redirected_to friends_url(Friend.last)
  end

  test "should get edit" do
    get edit_friend_url(@friend)
    assert_response :success
  end

  test "should update friend" do
    patch friend_url(@friend), params: {
      friend: { first_name: @friend.first_name, email: @friend.email, phone: @friend.phone, description: @friend.description, user_id: @friend.id  } }
    assert_redirected_to friend_url(@friend)
  end

  test "should destroy friend" do
    assert_difference('Friend.count', -1) do
      delete friend_url(@friend)
    end

    assert_redirected_to friends_url
  end
end
