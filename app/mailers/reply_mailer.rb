class ReplyMailer < ActionMailer::Base
  default from: "keb97@cornell.edu"

  def question_email(question)
    @ticket = ticket
    @url = 'http://mighty-citadel-7508.herokuapp.com/tickets/new'
    email_with_name = "Help provider"
    mail(to: "mewzik@gmail.com", subject: "There are questions.")
  end
end
