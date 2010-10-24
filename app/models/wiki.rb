class Wiki
  attr_reader :path, :pages
  
  def initialize(path)
    @path = path
    @pages = {}
    list_pages.each do |page|
      @pages[page.to_sym] = WikiPage.new(self, page)
    end
  end
  
  def markdown_files
    Dir.new(@path).reduce([]) do |result, file| 
      result << file if file.last(3) == ".md"
      result 
    end
  end
  
  def list_pages
    markdown_files.map {|file| file.gsub(".md", "")}
  end

  
end
