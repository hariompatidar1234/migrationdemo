class Student < ApplicationRecord
  # validates :number, presence: true, length: { is: 10 }
  before_validation :normalize_number

  def normalize_number
      self.number=number.gsub(/\D/,'') if number.present?
  end

  after_validation :log_validation_status
  def log_validation_status
      Rails.logger.error("Validation errors: #{errors.full_messages.join(', ')}") if errors.any?
  end

  before_save :set_default_name
  def set_default_name
    self.name = "Unknown" if self.name.blank?

  end

  after_save :send_welcome_email
  def send_welcome_email
  Rails.logger.info("Welcome email sent to #{name}.")
  end 


  before_create :set_default_age
  def set_default_age
    self.age = 18 if self.age.blank?
  end

  after_create :notify_admin_created
  def notify_admin_created
    Rails.logger.info("#{name} has been created.")
  end
  before_update :prevent_age_reduction
  after_update :log_address_change
  before_destroy :check_for_dependencies 
  after_destroy :notify_deletion
  after_commit :notify_commit

  def prevent_age_reduction
    self.age = age_was if age_changed? && age < age_was
  end

  def log_address_change
    Rails.logger.info("#{name}'s address changed to #{address}") if address_changed?
  end

  def check_for_dependencies
    if Dependents.where(student_id: id).exists?
      throw(:abort)
    end
  end

  def notify_deletion
    Rails.logger.info("#{name} has been deleted.")
  end

  def notify_commit
    Rails.logger.info("#{name}'s changes have been committed.")
  end
end
