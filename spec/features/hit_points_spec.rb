require 'spec_helper.rb'

feature "Battle", :type => :feature do
  scenario "Players see eachothers hit points" do
    visit "http://localhost:4567"

    fill_in "Player1", :with => "Tudor"
    fill_in "Player2", :with => "Louisa"
    click_button('Submit')

    expect(page).to have_content("Louisa: 100/100 HP")

  end

end
