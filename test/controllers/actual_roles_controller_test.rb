require 'test_helper'

class ActualRolesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @actual_role = actual_roles(:one)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'ActualRole.count' do
      post actual_roles_path, params: { actual_role: { organization: "Lorem ipsum" } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'ActualRole.count' do
      delete actual_role_path(@actual_role)
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy for wrong role" do
    log_in_as(users(:michael))
    actual_role = actual_roles(:ants)
    assert_no_difference 'ActualRole.count' do
      delete actual_role_path(actual_role)
    end
    assert_redirected_to root_url
  end

end