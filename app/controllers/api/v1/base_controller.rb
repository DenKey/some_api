class Api::V1::BaseController < ApplicationController
  around_action :run_action

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
        error(I18n.t('api.errors.record_not_found'), STATUS_MISSING_RESOURCE_ERROR, e)
      when ActiveRecord::RecordInvalid, ActionController::ParameterMissing
        error(I18n.t('api.errors.parameters_error'), STATUS_PARAMETER_ERROR, e)
      else
        error(I18n.t('api.errors.generic'), STATUS_SERVER_ERROR)
      end
    ensure
      # Development version of logging. We can use any specified services here
      Rails.logger.info(e)
      Rails.logger.info(e.class)
    end
  end
end