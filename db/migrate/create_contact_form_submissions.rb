class CreateContactFormSubmissions < ActiveRecord::Migration
  def change
    create_table :contact_form_submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :additional
      t.text :message
      t.timestamps
    end
  end
end
