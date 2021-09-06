# frozen_string_literal: true

module Api
  class UnmatchController < ApplicationController
    skip_before_action :authorized, only: :not_found

    def not_found
      @error = OpenStruct.new(
        message: I18n.t('api.errors.resource_not_found')
      )

      render 'api/v1/base/error.json.jbuilder', status: STATUS_MISSING_RESOURCE_ERROR
    end
  end
end
