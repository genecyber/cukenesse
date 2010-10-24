class WikiPage
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
  
  def features
    feature_html_expression = /<a href="features\/.*">.*<\/a>/
    
    parsed_features_html = feature_html_expression.match html
    
    return [] unless parsed_features_html 
    return [Feature.new(self, parsed_features_html[1])]
  end
  
end
