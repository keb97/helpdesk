class Api::TicketsController < ApplicationController
skip_before_filter :verify_authenticity_token

  def create
    Ticket.create_from_postmark(Postmark::Mitt.new(request.body.read))
    render :text => "You created!", status: :created
  end
end

