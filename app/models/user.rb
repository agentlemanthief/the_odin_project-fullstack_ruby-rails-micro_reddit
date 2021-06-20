class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true, length: { in: 3..12 }
  validates :username, presence: true, length: { minimum: 6, maximum: 12 }
  validates :password, presence: true, length: { minimum: 6, maximum: 12 }
end
