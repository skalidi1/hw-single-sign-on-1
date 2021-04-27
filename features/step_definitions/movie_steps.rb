
Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome to Rotten Potatoes!")
end

Given /the following profiles exist/ do |profiles_table|
  profiles_table.hashes.each do |profile|
    Profile.create! profile
  end 
end

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create! user
  end 
end

Given /the following authorizations exist/ do |authorizations_table|
  authorizations_table.hashes.each do |authorization|
    Authorization.create! authorization
  end 
end

 Then /^I will see "([^"]*)"$/ do |message|
   expect(page.body).to have_content(message)
 end

# Then /^I will see "([^"]*)"$/ do |message|
#  puts page.body # <---
#  expect(page.body).to have_content(message)
# end