class ReplyMailer < ActionMailer::Base
  default from: "from@example.com"

  def question_email
    @url = 'http://mighty-citadel-7508.herokuapp.com/tickets/new'
    email_with_name = "Help provider"
    mail(to: "mewzik@gmail.com", subject: "There are questions.")
  end
end
