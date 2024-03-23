class User < ApplicationRecord
    has_many :comments
    has_many :articles
  
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :date_of_birth, presence: true
end