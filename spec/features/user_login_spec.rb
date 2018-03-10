require 'rails_helper'

RSpec.feature "User authentication" do

  describe "an existing Admin User can" do
    let(:user) {create(:user, role: "admin")}

    it "login and be directed to Admin Dashboard" do
      visit root_path

      expect(current_path).to eq(root_path)

      fill_in "user[email]", with: user.email
      fill_in "user[password]", with: user.password

      click_on "Login"

      expect(current_path).to eq(admin_dashboard_index_path)
      expect(page).to have_content("Successfully Logged In as #{user.first_name}.")
      expect(page).to have_content("Logout, #{user.first_name}")
    end
  end

  describe "with incorrect password" do
    let(:user) {create(:user, role: "admin")}

    it "cannot login" do
      visit root_path

      click_on "Login"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Login Error: incorrect username or password.")
    end
  end
end
