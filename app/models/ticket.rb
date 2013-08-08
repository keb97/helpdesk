class Ticket < ActiveRecord::Base
  attr_accessible :problem, :solution

  def self.create_from_postmark(mitt)
    @ticket = Ticket.find(mitt.subject)
    @ticket.solution = mitt.text_body
  end
end
