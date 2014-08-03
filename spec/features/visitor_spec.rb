require 'spec_helper'

feature 'Vistor signs up' do
  
  before do
    FactoryGirl.create(:user)
  end

  scenario 'with valid email and password' do
    sign_up_with 'user@example.com', 'password'
    expect(page).to have_content('Sign out')
  end

  def sign_up_with(email, password)
    visit new_user_session_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'
  end
end
