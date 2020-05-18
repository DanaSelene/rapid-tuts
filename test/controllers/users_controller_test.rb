require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
<<<<<<< HEAD
    get users_new_url
=======
    get signup_path
>>>>>>> tut-6-end
    assert_response :success
  end

end
