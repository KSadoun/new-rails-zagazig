class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    add_reference :posts, :user, foreign_key: true
end
