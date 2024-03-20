class UserMailer < ApplicationMailer
include SendGrid
    def welcome
        mail(from: 'nitin.gaurav@reddoorz.com', to: 'riya.saxena@reddoorz.com' , subject: 'Welcome Reddoorz', cc: 'khushi.jain@reddoorz.com')
    end
end
