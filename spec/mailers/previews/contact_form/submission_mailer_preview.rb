module ContactForm
  class SubmissionPreview < ActionMailer::Preview
    def send_message
      if ContactForm::Submission.first
        ContactForm::SubmissionMailer.send_message(ContactForm::Submission.first)
      else
        fail ActiveRecord::RecordNotFound, "No ContactForm Submissions in the database."
      end
    end
  end
end
