require 'spec_helper'

describe WikiPage do

  before do
    @basic_wiki_path = fixture_wiki_path :basic
    @wiki = Wiki.new(@basic_wiki_path)
    @page = WikiPage.new(@wiki, :index)
  end
  
  it "creates a wiki page from a wiki" do
    @page.wiki.should == @wiki
  end
  
  it "knows its page name" do
    @page.name.should == "index"
  end
  
  it "knows its page path" do
    @page.path.should == fixture_page_path(:basic, "index")
  end
  
  it "can retrieve its page contents" do
    @page.contents.should == File.read(fixture_page_path(:basic, "index"))
  end
  
end
