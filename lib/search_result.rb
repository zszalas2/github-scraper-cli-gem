class SearchResult
  attr_accessor :query, :name, :email_address, :location, :url, :user_name


  #search result should return the following:
    #username, real name, location, profile url, geo, email address
    @@all = []

    def self.all
      @@all
    end

    def save
      @@all << self
    end

    def self.user_names
    end

    def self.email_address
    end

    def self.locations
    end

    def self.urls
    end




end
