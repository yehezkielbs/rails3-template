Given(/^the following (.+) exist:$/) do |resource, table|
  attrs = table.rows_hash
  @test_resource = resource.classify.constantize.create(attrs)
end
