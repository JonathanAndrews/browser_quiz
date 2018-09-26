feature "answer page" do
  scenario "Play_again button links to new riddle" do
    insert_riddle_to_database
    visit '/riddle'
    fill_in :submitted_answer, with: "Time"
    click_button 'Submit'
    click_button 'Riddle me this?'
    expect(page).to have_button "Submit"
  end

  # scenario "Play_again button links to new riddle" do
  #   visit '/answer_output'
  #   click_button 'Riddle me this?'
  #   expect(page).to have_button "Submit"
  # end
end
