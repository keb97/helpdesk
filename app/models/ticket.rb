class Ticket < ActiveRecord::Base
  attr_accessible :problem, :solution

  def self.create_from_postmark(mitt)
    #Ticket.find(mitt.subject #is the ticket id)
    ticket.solution = mitt.text_body
  end
end
