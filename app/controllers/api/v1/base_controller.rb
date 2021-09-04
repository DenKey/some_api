class Api::V1::BaseController < ApplicationController
  around_action :run_action

  STATUS_PARAMETER_ERROR = 400
  STATUS_MISSING_RESOURCE_ERROR = 404
  STATUS_SERVER_ERROR = 500

  private

  def error(message, status, errors = nil)
    @error = OpenStruct.new(
      status: status,
      message: message,
      errors: errors
    )

    render 'api/v1/base/error.json.jbuilder'
  end

  def run_action
    begin
      yield
    rescue => e
      case e
      when ActiveRecord::RecordNotFound
        error(I18n.t('api.errors.record_not_found'), STATUS_MISSING_RESOURCE_ERROR)
      when ActiveRecord::RecordInvalid
        error(I18n.t('api.errors.parameters_error'), STATUS_PARAMETER_ERROR, e.to_s)
      else
        error(I18n.t('api.errors.generic'), STATUS_SERVER_ERROR)
      end
    end
  end
end