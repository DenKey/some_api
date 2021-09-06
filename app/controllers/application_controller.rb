# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionController::ImplicitRender
  include ActionView::Layouts
  include Api::ApplicationHelper
end
