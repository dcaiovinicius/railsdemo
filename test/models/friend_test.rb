require "test_helper"

class FriendTest < ActiveSupport::TestCase
  setup do
    @friend = friends(:one)
  end

  test "should not save friend" do
    @friend = Friend.new
    assert_not @friend.valid?
  end

  test "should save friend" do
    assert @friend.valid?
  end
end
