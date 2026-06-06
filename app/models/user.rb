class User < ApplicationRecord

  validates :name, presence: true
  validates :DOB, presence: true
  validates :email, presence: true, uniqueness: true # email uniqueness
  validates :phone_number, presence: true
  
  # Email validation
  validates :email, format: { 
    with: URI::MailTo::EMAIL_REGEXP, 
    message: "must be a valid email address" 
  }
  
end