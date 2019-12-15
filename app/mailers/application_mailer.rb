class ApplicationMailer < ActionMailer::Base
  default to: "customer@feedback.com", from: "parking@feedback.com"
  layout 'mailer'
end
