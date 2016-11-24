require 'spec_helper.rb'

feature "Battle", :type => :feature do

  before do
    sign_in_and_play
  end

  scenario "Players see eachothers hit points" do
    expect(page).to have_content("Louisa: 100/100 HP")
    expect(page).to have_content("Tudor: 100/100 HP")
  end

  scenario "Player1 attack decreases the player2's hitpoints" do
    click_button('ATTACK!')
    expect(page).to have_content("Louisa: 90/100 HP")
  end

  scenario "After Player1 attacks, switch turns" do
    click_button('ATTACK!')
    click_button('ATTACK!')
    expect(page).to have_content("Tudor: 90/100 HP")
  end

  scenario "After Player1 attacks, should see confirmation" do
    click_button('ATTACK!')
    expect(page).to have_content("Tudor has attacked Louisa!")
  end

  scenario "After Player2 attacks, should see confirmation" do
   click_button('ATTACK!')
   click_button('ATTACK!')
   expect(page).to_not have_content("Tudor has attacked Louisa!")
   expect(page).to have_content("Louisa has attacked Tudor!")
  end
end
