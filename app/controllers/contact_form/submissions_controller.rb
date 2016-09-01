module ContactForm
  class SubmissionsController < ApplicationController
    def create
      @submission = ContactForm::Submission.new(submission_params)
      if @submission.save
        redirect_to contact_form_thank_you_path
      else
        flash.now[:alert] = "There was a problem submitting your message. Please check the form for errors."
        render :new
      end
    end

    def new
      @submission = ContactForm::Submission.new
    end

  private

    def submission_params
      params.require(:contact_form_submission).permit(
        :first_name,
        :last_name,
        :phone_number,
        :email,
        :additional,
        :message
      )
    end
  end
end
