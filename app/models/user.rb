class User < ActiveRecord::Base 
    has_secure_password
    has_many :family_members 
    validates :user_name, presence: true 
    validates :user_name, uniqueness: true 
end 