Given(/^I'm on the new (.+) page$/) do |resource|
  visit(send("new_#{resource}_path"))
end

Given(/^I'm on the (.+) edit page$/) do |resource|
  visit(send("edit_#{resource}_path", @test_resource))
end

Given(/^I'm on the new (.+) page on SPA$/) do |resource|
  visit("/#/#{resource.pluralize}/new")
end

Given(/^I'm on the (.+) edit page on SPA$/) do |resource|
  visit("/#/#{resource.pluralize}/#{@test_resource.id}/edit")
end

When(/^I'm on the (.+) list page on SPA$/) do |resources|
  visit("/#/#{resources}")
end
