require 'test_helper'

class UserAdministrationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_administration_index_url
    assert_response :success
  end

end
