feature "answer page" do
  scenario "Play_again button links to new riddle" do
    visit '/answer_output'
    click_button 'Riddle me this?'
    expect(page).to have_button "Submit"
  end
end
