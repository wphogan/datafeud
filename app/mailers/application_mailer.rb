class ApplicationMailer < ActionMailer::Base
  default from: "info@datacenter.org"
  layout 'mailer'
end