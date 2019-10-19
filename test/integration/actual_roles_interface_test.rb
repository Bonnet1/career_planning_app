require 'test_helper'

class ActualRolesInterfaceTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  # test "actual role interface" do
  #   log_in_as(@user)
  #   get root_path
  #   # assert_select 'div.pagination'
  #   # Invalid submission
  #   assert_no_difference 'ActualRole.count' do
  #     post actual_roles_path, params: { actual_roles: { organization: "" } }
  #   end
  #   assert_select 'div#error_explanation'
  #   # Valid submission
  #   organization = "This actual_role really ties the room together"
  #   assert_difference 'ActualRole.count', 1 do
  #     post actual_roles_path, params: { actual_roles: { organization: organization } }
  #   end
  #   assert_redirected_to root_url
  #   follow_redirect!
  #   assert_match content, response.body
  #   # Delete post
  #   assert_select 'a', text: 'delete'
  #   # first_actual_role = @user.actual_roles.paginate(page: 1).first
  #   assert_difference 'ActualRole.count', -1 do
  #     delete actual_role_path(first_actual_role)
  #   end
  #   # Visit different user (no delete links)
  #   get user_path(users(:archer))
  #   assert_select 'a', text: 'delete', count: 0
  # end
end