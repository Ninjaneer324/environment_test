class User < ApplicationRecord
    validates :username, presence: true
    has_many :books, through: :books_owneds
end
