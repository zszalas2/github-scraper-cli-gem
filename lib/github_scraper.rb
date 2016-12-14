class GithubScraper

  attr_accessor :searchresult, :doc

  def initialize(query)
    @searchresult = SearchResult.new
    @searchresult.query = query
    @doc = Nokogiri::HTML(open("https://github.com/search?utf8=%E2%9C%93&q=#{query}&type=Users&ref=searchresults"))
  end

end