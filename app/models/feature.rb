class Feature
  
  def initialize(page, file_name)
    @page = page
    @path = page.wiki.path + "features/#{file_name}"
  end
  
end
