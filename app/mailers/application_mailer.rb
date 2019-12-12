class ApplicationMailer < ActionMailer::Base
  default to: "parking@feedback.com", from: "from@example.com"
  layout 'mailer'
end
