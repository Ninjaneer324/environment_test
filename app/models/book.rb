class Book < ApplicationRecord
    validates :title, presence: true
    has_many :users, through: :books_owneds
end
