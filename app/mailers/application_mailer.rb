class ApplicationMailer < ActionMailer::Base
  default from: Settings.mails.from

  layout 'mailer'
end
