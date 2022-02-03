class Proposal < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes

  validates :title, presence: true
  validates :description, presence: true
end
