class Dealer < ApplicationRecord
    belongs_to :businessman


    validates :d_name, presence: true
    validates :d_email, presence: false
    validates :d_age, presence: true
    validates :d_contact, presence: true
   validates :businessman_id, presence: true
    
end
