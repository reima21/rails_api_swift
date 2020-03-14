class Post < ApplicationRecord
    has_many :userposts
    has_many :user, through: :userposts
end
