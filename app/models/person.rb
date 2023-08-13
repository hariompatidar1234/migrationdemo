class Person < ApplicationRecord
    validates :name, presence: true 
    validates :name,presence: true
    validates :terms_of_service,acceptance: {message: 'must be abided'}
    validates :email, confirmation: {case_sensitive: false}
    validates :registration_number, length: {is: 6}
    validates :bio, length: {maximum: 500}
<<<<<<< Updated upstream
    validates :points, numericality: true
    validates :games_played, numericality: { only_integer: true }
=======
      validates :points, numericality: true
  validates :games_played, numericality: { only_integer: true }
>>>>>>> Stashed changes
end
