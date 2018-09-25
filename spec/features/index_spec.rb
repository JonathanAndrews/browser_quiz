feature "index page" do
  scenario "should say where the user is" do
    visit '/'
    expect(page).to have_content "Misty Mountains"
  end

  scenario "should have button leading to riddle page" do
    visit '/'
    click_button "Enter the Cave"
    expect(page).to have_content "Submit"
  end
end
