# a blog article, written by a user
class Article < ApplicationRecord
  belongs_to :user
  validates_length_of :title, minimum: 5
end
