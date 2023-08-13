class PersonDemo < ApplicationRecord

    # before Validations
    # include ActiveModel::Validations
    # include ActiveModel::Validations::Callbacks

    # attr_accessor :name
    # validates_length_of :name, maximum: 6
    # before_validation :remove_whitespaces

    # private 
    # def remove_whitespaces
    #     name.strip!
    # end 


    # after validates
     include ActiveModel::Validations
    include ActiveModel::Validations::Callbacks

    attr_accessor :name,:status
    validates_presence_of :name
    after_validation :set_status

    private
    def set_status
      self.status = errors.empty?
    end 
end
