# frozen_string_literal: true

module Api
  module V1
    class BaseController < ApplicationController
      around_action :run_action
      skip_before_action :authorized, only: [:index, :show]

      private

      def error(message, status, errors = nil)
        @error = OpenStruct.new(
          message: message,
          errors: errors
        )

        render 'api/v1/base/error.json.jbuilder', status: status
      end

      def run_action
        yield
      rescue StandardError => e
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
      end
    end
  end
end
