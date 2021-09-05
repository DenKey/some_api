class Api::UnmatchController < ApplicationController
  def not_found
    @error = OpenStruct.new(
      status: STATUS_MISSING_RESOURCE_ERROR,
      message: I18n.t('api.errors.resource_not_found')
    )

    render 'api/v1/base/error.json.jbuilder'
  end
end
