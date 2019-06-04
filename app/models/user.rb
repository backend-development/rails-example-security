class User < ApplicationRecord
    has_many :articles, dependent: :destroy
    validates :name, :email, :password, :homepage, presence: true
    validates :email, format: { with: /@.+\./, message: 'E-Mail should contain @ and at least one dot' }
    validates :homepage, format: { with: /\Ahttp/, message: 'Webpage-URL needs to start with http' }
  
    def self.authenticate(email, password)
      user = find_by(email: email)
      return user if user && user.password == password
      nil
    end

    def to_s
      name
    end

    def admin?
      admin
    end

end
