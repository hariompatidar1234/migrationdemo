class Doctor < ApplicationRecord
    has_many :appoitments
    has_many :patients, through: :appoitments

    validates :name ,:mobile_number, :address, presence:true
end
