class Patient < ApplicationRecord
    has_many :appoitments
    has_many :doctors,through: :appoitments

    validates :name ,:mobile_number,:address,presence: true
end
