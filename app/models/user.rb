class User < ApplicationRecord
    validates :name, length: { minimum: 2 }
    validates :email, length: { minimum: 3 }
    validates :password, length: { minimum: 7 }
    validates :homepage, length: { minimum: 5 }


    def to_s
        name
    end
end
