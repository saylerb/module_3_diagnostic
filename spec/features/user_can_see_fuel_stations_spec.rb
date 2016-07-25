require 'rails_helper'

RSpec.feature "user can see fuel stations" do
  scenario "a user navigates to root and sees a list of fuel stations" do
    visit root_path

    fill_in "q", with: "80203"
    click_on "Locate"
   
    #expect(current_path).to eq("/search?zip=80203")

    expect(page).to have_content("Cultural Center Complex Garage")
    expect(page).to have_content("Address: 65 W 12th Ave")
    expect(page).to have_content("Fuel Type: ELEC")
    expect(page).to have_content("Distance: 0.41801")
  end
end
