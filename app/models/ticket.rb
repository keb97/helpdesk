class Ticket < ActiveRecord::Base
  attr_accessible :problem, :solution

  def self.create_from_postmark(mitt)
    @ticket = Ticket.find(mitt.subject.to_i)
    @ticket.solution = mitt.text_body
    @ticket.save
  end
end
