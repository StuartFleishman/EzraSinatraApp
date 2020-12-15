class FamilyMember < ActiveRecord::Base 
    belongs_to :user 
    validates :name, presence: true 
    validates :relationship, presence: true 
    validates :birthdate, presence: true

end 