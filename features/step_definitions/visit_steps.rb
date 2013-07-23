Given(/^I'm on the new (.+) page$/) do |resource|
  visit(send("new_#{resource}_path"))
end

Given(/^I'm on the (.+) edit page$/) do |resource|
  visit(send("edit_#{resource}_path", @test_resource))
end
