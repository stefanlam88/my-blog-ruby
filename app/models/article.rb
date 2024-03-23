class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy
    belongs_to :user

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    VALID_STATUSES = ['public', 'private', 'archived']

    validates :status, inclusion: { in: VALID_STATUSES }

    def archived?
        status == 'archived'
    end

    def self.search(search)
        if search
          joins(:user).where("title LIKE ? OR users.name LIKE ?", "%#{search}%", "%#{search}%")
        else
          all
        end
    end
end
