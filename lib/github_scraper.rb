#!/usr/bin/ruby
require 'pry'
class GithubScraper

  attr_accessor :search_result
  attr_reader :doc

  def initialize(query)
    @search_result = SearchResult.new
    @search_result.query = query
    @doc = Nokogiri::HTML(open("https://github.com/search?utf8=%E2%9C%93&q=#{query}&type=Users&ref=searchresults"))
  end

  #retrieves all the data needed to retrieve objects
  #this would have to make  search_result class

  #def scrape
    #scrape_details
    #sresults= []
    #sresults << self.scrape_details

   # @searchresult #=> should have bunch of contacts
 # end

  #def scrape_details
    #populate @searchresult with more data from Github search
    #scrape details as follow: name, number of query results
    #@searchresult.number_of_users = @doc.css("div .sort-bar h3").text
    #@searchresult.user = @doc.css()
  #end

end