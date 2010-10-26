class WikiPage
  @@feature_html_expression = /<a href="features\/.*">.*<\/a>/
  
  attr_reader :wiki, :name, :path
  
  def initialize(wiki, page = "index")
    @wiki = wiki
    @name = page.to_s
    @path = wiki.path + "#{page}.md"
  end
  
  def contents
    File.read(@path)
  end
  
  def html
    BlueCloth.new(contents).to_html
  end
  
  def list_features
    []
  end
  
end
