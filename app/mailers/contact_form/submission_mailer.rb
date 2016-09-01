module ContactForm
  class SubmissionMailer < ApplicationMailer
    # Sends an email with the contents of a contact form submission
    def send_message(record)
      @submission = record
      mail(
        to:      ENV["CONTACT_EMAIL"],
        from:    @submission.email
      )
    end
  end
end
