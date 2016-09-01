require 'rails/generators'
require 'rails/generators/migration'

module ContactForm
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    source_root File.expand_path("../../../..", __FILE__)

    def copy_controller
      submissions_controller_path = "app/controllers/contact_form/submissions_controller.rb"
      copy_file submissions_controller_path, submissions_controller_path
    end

    def copy_views
      contact_form_views_path = "app/views/contact_form"
      directory contact_form_views_path, contact_form_views_path
    end

    def copy_models
      contact_form_models_path = "app/models/contact_form"
      directory contact_form_models_path, contact_form_models_path
    end

    def copy_mailers
      contact_form_mailer_path = "app/mailers/contact_form"
      directory contact_form_mailer_path, contact_form_mailer_path
    end

    def self.next_migration_number(_path)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end

    def copy_files
      submission_mailer_preview_path = "spec/mailers/previews/contact_form"
      directory submission_mailer_preview_path, submission_mailer_preview_path

      admin_contact_form_submission_path = "app/admin/contact_form"
      directory admin_contact_form_submission_path, admin_contact_form_submission_path
    end

    def setup_routes
      inject_into_file "config/routes.rb", "\n\tpost \"contact-form-submit\", to: \"contact_form/submissions#create\", as: \"submit_contact_form\"\n\tget \"contact-us\", to: \"contact_form/submissions#new\", as: \"contact_us\"\n\tget \"contact-us/thank-you\", to: \"contact_form/submissions#index\", as: \"contact_form_thank_you\"\n", :before => /^end/
    end

    # Install the database migrations required for contact form submissions
    def install_migrations
      migration_template "db/migrate/create_contact_form_submissions.rb", "db/migrate/create_contact_form_submissions.rb"
    end
  end
end
