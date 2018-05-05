class ApplicationMailer < ActionMailer::Base
  default from: 'cf-example-blog.herokuapp.com'
  layout 'mailer'
end
