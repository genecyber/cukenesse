When /^I select the "(.*)" page$/ do |page|
  @current_page = @wiki.pages[page.to_sym]
end

Then /^the content for that page should be:$/ do |markdown|
  @current_page.contents.should == markdown
end

Then /^the html for that page should be:$/ do |html|
  @current_page.html.should == html
end

Then /^the list for cucumber features should be empty$/ do
  @current_page.list_features.should == []
end
