class User < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true # email uniqueness
  
  # Email validation
  validates :email, format: { 
    with: URI::MailTo::EMAIL_REGEXP, 
    message: "must be a valid email address" 
  }

  has_many :posts, dependent: :destroy
  
end