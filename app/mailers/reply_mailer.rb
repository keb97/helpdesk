class ReplyMailer < ActionMailer::Base
  default from: "keb97@cornell.edu"

  def question_email(ticket)
    @ticket = ticket
    mail(to: "mewzik@gmail.com", subject: "There are questions.", reply_to: "233bf990395644b63ab70ce6a1a3ea7d@inbound.postmarkapp.com
")
  end


end
