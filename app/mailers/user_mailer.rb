class UserMailer < ApplicationMailer
  default from: "cunger7@gmail.com"

def contact_form(email, name, message)
@message = message
  mail(from: email,
       to: 'cunger7@gmail.com',
       subject: "Blunder Chess Contact - #{name}")
end
end
