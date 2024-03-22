
class UserMailer < ApplicationMailer
    include SendGrid
  
    def welcome
      attachments.inline['rails.png'] = File.read('/home/riyasaxena/Desktop/rails.png')
      attachments['data.csv'] = File.read('/home/riyasaxena/Desktop/data.csv')
      mail(from: 'riya.saxena@reddoorz.com', to: 'riya.saxena@reddoorz.com', subject: 'TASK', cc: 'nitin.gaurav@reddoorz.com')
    end

    def email_confirmation(user)
        @user = user
        mail(to: @user.email, subject: 'Email Confirmation')

      end
    # app/mailers/user_mailer.rb
    def blog_updated(user)
      @user = user
      mail(to: @user.email, subject: 'Blog Updated Confirmation')
    end
end



# app/mailers/user_mailer.rb
