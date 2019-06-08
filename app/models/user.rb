class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  after_update :send_password_change_email, if: :needs_password_change_email?

  private
  def needs_password_change_email?
    encrypted_password_changed? && persisted? 
  end
  
  def send_password_change_email
    UserMailer.password_changed(id).deliver
  end
end
