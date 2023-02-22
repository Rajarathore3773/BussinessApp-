class Investor < ApplicationRecord
    belongs_to :businessman
    

    validates :i_name, presence: true
    validates :i_email, presence: false
    validates :i_age, presence: true
    validates :i_contact, presence: true
    validates :i_ammount, presence: true
    
   validates :businessman_id, presence: true
end
