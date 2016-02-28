# model for authors = users of this blog
# readers do not need to log in, do not have a user record!
class User < ApplicationRecord
  has_many :articles
  validates :name, :email, :password, presence: true
  validates :email, format: { with: /@.+\./, message: 'E-Mail should contain @ and at least one dot' }

  def self.authenticate(email, password)
    user = find_by_email(email)
    return user if user && user.password == password
    nil
  end

  def to_s
    name
  end
end
