# frozen_string_literal: true

Apipie.configure do |config|
  config.app_name                = 'SomeApi'
  config.copyright               = "&copy; 2021 Denys Kriukov"
  config.api_base_url            = '/api'
  config.doc_base_url            = '/apipie'
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
  config.translate = false
  config.show_all_examples       = true
  config.reload_controllers      = Rails.env.development?
  config.app_info = <<-DOC
    Simple CRUD for a shop
  DOC
  config.app_info["1.0"] = <<-DOC
    Each request must contains header key 'api' with value 'v1'.

    For authorization header key 'Authorzation' must contains 'Bearer: USER_TOKEN'.
  DOC
end
