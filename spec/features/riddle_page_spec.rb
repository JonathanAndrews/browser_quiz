feature 'riddle page' do

  scenario 'should have a button that takes you to the answer page' do

    insert_riddle_to_database

    visit '/riddle'
    fill_in :submitted_answer, with: "Anything"
    click_button 'Submit'
    expect(page).to have_button "Riddle me this?"
  end

  scenario 'should have a riddle' do
    insert_riddle_to_database
    visit '/riddle'
    expect(page).to have_content "This thing all things devours;"
  end
end
