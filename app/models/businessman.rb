class Businessman < ApplicationRecord
    has_many :dealers


    validates :b_company, presence: true
    validates :b_name, presence: true
    validates :b_email, presence: true
    validates :b_age, presence: true
    validates :b_contact, presence: true
    
    
    
end
