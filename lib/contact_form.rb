require "codelation_assets"
require "rails"
require "contact_form/engine"
require "contact_form/version"

# Blogelator allows you to add a blog to a Rails app.
module ContactForm
  def self.table_name_prefix
    "contact_form_"
  end
end
