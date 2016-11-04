# Contact Form

Contact Form is a Ruby gem for adding a contact form to a Rails project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "contact-form", github: "codelation/contact-form"
```

Install the Contact Form gem with Bundler:

```bash
bundle install
```

Install the controller, views, and database migrations:

```bash
rails g contact_form:install
rake db:migrate
```

## Usage
Be default, the available fields are: `first_name`, `last_name`, `email`, `phone_number`, `additional`, and `message`.  This is ment to be flexible for most situations.  If you do not want to separate first and last names, you could use just `first_name`.  The `additional` field is meant to be used to hold any other information like a company name or organization name.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
