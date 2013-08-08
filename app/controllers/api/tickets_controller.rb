class Api::TicketsController < ApplicationController

  def create
    if Ticket.create_from_postmark(Postmark::Mitt.new(request.body.read))
     render :text => "Solution added!"
    else
     render :text => "Solution not added."
    end
  end
end

