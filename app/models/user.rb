class User < ApplicationRecord
  has_many :votes
  has_many :proposals, foreign_key: 'author_id'
end
