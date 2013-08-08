class ReplyMailer < ActionMailer::Base
  default from: "keb97@cornell.edu"

  def question_email(ticket)
    @ticket = ticket
    mail(to: "mewzik@gmail.com", subject: "There are questions.")
  end
end
