class Demo < ApplicationRecord
  before_create :greeting_message
  after_update  :dispay_age
  def greeting_message
      puts "Hey i will run before you create an object"
  end  

  #short form of the before create 
  # before_create do 
  #     puts "Hey i will run before you create an object"
  # end 

  def dispay_age
    if self.date_of_birth.present?
      age =Date.today.year-date_of_birth.year
      puts "age if persone  #{age}"
    else 
      puts "age can not be calculate without date_of _birth "
    end 
  end 

end
