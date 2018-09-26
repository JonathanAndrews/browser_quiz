require_relative '../web_helpers'

feature "index page" do
  scenario "should say where the user is" do
    visit '/'
    expect(page).to have_content "Misty Mountains"
  end

  scenario "should have button leading to riddle page" do

  insert_riddle_to_database

    visit '/'
    click_button "Enter the Cave"
    expect(page).to have_content "Submit"
  end
end
