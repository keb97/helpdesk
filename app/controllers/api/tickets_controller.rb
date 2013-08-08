class Api::TicketsController < ApplicationController

  def create
    Ticket.create_from_postmark(Postmark::Mitt.new(request.body.read))
  end
end

