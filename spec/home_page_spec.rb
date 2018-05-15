require 'rails_helper'

RSpec.describe "home page", :type => :request do

  it "displays the user's email after successful login" do
    User = FactoryGirl.create(:user, :email => "123@gmail.com", :password => "123456")
    visit "sign_in"
    fill_in "Email", :with => "123@gmail.com"
    fill_in "Password", :with => "123456"
    click_button "Log in"

    expect(page).to have_selector(".header .email", :text => "123@gmail.com")
  end
end
