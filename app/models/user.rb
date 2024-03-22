class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  after_create :send_email_confirmation
  after_update :send_update_confirmation_email

  private

  def send_email_confirmation
    UserMailer.email_confirmation(self).deliver_now
  end
  def send_update_confirmation_email
    UserMailer.blog_updated(self).deliver_now
  end
  
  has_one_attached :avatar
  enum role: { user:0, admin: 1, moderator: 2}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable
        
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy

        
end