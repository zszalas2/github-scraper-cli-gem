class InvalidType < StandardError; end

class SearchResult
  attr_accessor :number_of_results, :query
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def contacts
    @contacts.dup.freeze
  end


  def add_contact(contact)
    if !contact.is_a?(contact)
      raise InvalidType, "must be a contact"
    else
     @contacts << contact
   end
  end

end
