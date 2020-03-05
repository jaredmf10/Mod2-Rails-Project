class User < ApplicationRecord

    has_many :appointments 
    has_many :pets, through: :appointments

has_secure_password



#   attr_reader :password

    # def password=(plain_text_pw)
    #      self.password_digest = BCrypt::Password.create(plain_text_pw)
    # end

    # def authenticate(pt_pw)
    #   if BCrypt::Password.new(self.password_digest)  == pt_pw
    #     @user
    #   else
    #     false
    #   end   
    # end
end