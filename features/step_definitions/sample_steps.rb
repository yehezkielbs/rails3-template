When(/^I add a new sample$/) do
  fill_in('Name', :with => 'something')
  click_button('Save')
end

Then(/^I should see the page for my newly created sample$/) do
  page.should have_content('something')
end

When(/^I update the sample$/) do
  fill_in('Name', :with => 'something else')
  click_button('Save')
end

Then(/^I should see the page for my edited sample$/) do
  page.should have_content('something else')
end
