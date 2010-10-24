require 'spec_helper'

describe Wiki do
  
  before do
    @basic_wiki_path = fixture_wiki_path :basic
    @wiki = Wiki.new(@basic_wiki_path)
  end
  
  it "creates a new wiki instance on a given path" do
    @wiki.path.should == @basic_wiki_path
  end
  
  it "lists the markdown files found on the given path" do
    @wiki.markdown_files.should == ["index.md","one_feature.md"]
  end
  
  it "recognizes the markdown files as pages" do
    @wiki.list_pages.should == ["index","one_feature"]
  end
  
  it "return WikiPages from the list of pages" do
    @wiki.pages[:index].path.should == WikiPage.new(@wiki, "index").path
    @wiki.pages[:one_feature].path.should == WikiPage.new(@wiki, "one_feature").path
  end
  
end
