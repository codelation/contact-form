module ContactForm
  def self.table_name_prefix
    "contact_form_"
  end
  
  class Submission < ActiveRecord::Base
    # Validations
    validates :first_name, :last_name, :email, :message, presence: true

    validate do
      tmp_obj = ContactForm::Submission.find_by(email: self.email)
      if !tmp_obj.nil? && tmp_obj.updated_at >= DateTime.now - 30.seconds
        self.errors.add(:base, "Your message has already been sent.")
      end
    end

    after_create :send_message

    def send_message
      ContactForm::SubmissionMailer.send_message(self).deliver
    end
  end
end
