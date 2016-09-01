ActiveAdmin.register ContactForm::Submission, as: "Contact Submissions" do
  permit_params [
    :first_name,
    :last_name,
    :email,
    :phone_number,
    :message,
    :additional
  ]

  filter :email

  index do
    selectable_column
    column :id
    column :name do |res|
      text_node "#{res.first_name} #{res.last_name}"
    end
    column :email
    column :created_at
    actions
  end

  form do |f|
    inputs "#{t('activerecord.models.submission', count: 1)} Details" do
      input :first_name
      input :last_name
      input :email
      input :phone_number
      input :additional
      input :message
    end

    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :phone_number
      row :additional
      row :created_at
      row :updated_at
    end

    panel "Message" do
      para resource.message
    end

    active_admin_comments
  end
end
