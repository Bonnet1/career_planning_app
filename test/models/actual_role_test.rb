require 'test_helper'

class ActualRoleTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @actual_role = @user.actual_roles.build(
    start_date: '2016-08-08',
    end_date: '2018-07-01',
    organization: 'Wayfair',
    role: 'Senior Manager',
    details: 'Lorem Ipsum', 
    user_id: @user.id)
  end

  test "should be valid" do
    assert @actual_role.valid?
  end

  test "user id should be present" do
    @actual_role.user_id = nil
    assert_not @actual_role.valid?
  end

  test "organization should be present" do
    @actual_role.organization = "   "
    assert_not @actual_role.valid?
  end
  
  test "organization should be at most 140 characters" do
    @actual_role.organization = "a" * 141
    assert_not @actual_role.valid?
  end

  # test "order should be most recent first" do
  #   assert_equal actual_roles(:most_recent), ActualRole.first
  # end
end