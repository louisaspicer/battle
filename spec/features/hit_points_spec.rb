require 'spec_helper.rb'

feature "Battle", :type => :feature do
  scenario "Players see eachothers hit points" do
    sign_in_and_play
    expect(page).to have_content("Louisa: 100/100 HP")
  end
end
