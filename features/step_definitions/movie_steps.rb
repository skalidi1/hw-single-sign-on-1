
Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome to Rotten Potatoes!")
end