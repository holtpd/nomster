class ApplicationMailer < ActionMailer::Base
  default from: 'no_reply@nomsterapp.com'
  layout 'mailer'
end
