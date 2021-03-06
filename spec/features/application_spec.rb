require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Homepage' do
  scenario 'Creating dogs' do
    visit '/'
    click_on 'Dogs'
    click_on 'Add Dog'
    fill_in 'name', with: 'poodle'
    fill_in 'description', with: 'intelligent'
    fill_in 'rating_1_to_5', with: 5
    click_on 'Create Dog'
    expect(page).to have_content 'poodle'
  end

  scenario 'Show dog' do
    visit '/'
    click_on 'Dogs'
    click_on 'Add Dog'
    fill_in 'name', with: 'poodle'
    fill_in 'description', with: 'intelligent'
    fill_in 'rating_1_to_5', with: 5
    click_on 'Create Dog'
    click_on 'poodle'
    expect(page).to have_content 'poodle'
    expect(page).to have_content 'intelligent'
    expect(page).to have_content 5
  end

  end


=begin
      String :name, :null=>false
      String :description, :null=>false
      Integer :rating_1_to_5
=end