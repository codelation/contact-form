module ContactForm
  class Engine < ::Rails::Engine
    # Load Rails Generators
    generators do
      require File.join(File.expand_path("../..", __FILE__), "generators", "contact_form", "install_generator.rb")
    end

    # Add interface for Active Admin (Pro)
    # @see http://activeadmin.info
    # @see http://github.com/codelation/activeadmin_pro
    if defined?(ActiveAdmin)
      initializer :contact_form do
        ActiveAdmin.application.load_paths.unshift File.join(File.expand_path("../..", __FILE__), "contact_form", "admin")
      end
    end
  end
end
