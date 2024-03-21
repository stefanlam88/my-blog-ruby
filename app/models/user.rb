class User < ApplicationRecord
    has_many :articles
    has_many :comments
  
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :date_of_birth, presence: true
end