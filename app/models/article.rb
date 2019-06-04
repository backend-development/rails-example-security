class Article < ApplicationRecord
  validates :title, :description, presence: true

  belongs_to :user

  def to_s
    title
  end

end
