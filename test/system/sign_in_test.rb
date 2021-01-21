require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "signing in with correct credentials" do
    visit new_user_session_path

    fill_in 'Email', with: 'patient1@crisalix.com'
    fill_in 'Password', with: '123456'

    click_button 'Log in'

    assert_selector "h1", text: "Your appointments"
  end
end
