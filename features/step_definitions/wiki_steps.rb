Given /^I instantiate a new wiki on the "(.*)" folder$/ do |folder|
  @current_path = applications_path(folder)
  @wiki = Wiki.new( @current_path )
end

Then /^the new wiki's path should be "(.*)"$/ do |path|
  @wiki.path.should == applications_path(path)
end

Then /^the wiki should recognize the following markdown files:$/ do |table|
  markdown_files = table.hashes.map do |attributes|
    attributes[:name]
  end
  @wiki.markdown_files.should == markdown_files
end

Then /^the wiki should recognize the following pages:$/ do |table|
  pages = table.hashes.map do |attributes|
    attributes[:name]
  end
  @wiki.list_pages.should == pages
end

Then /^I should get wiki pages with the following relative paths:$/ do |table|
  table.hashes.each do |page|
    @wiki.pages[page[:name].to_sym].path.should == applications_path(page[:path])
  end
end

