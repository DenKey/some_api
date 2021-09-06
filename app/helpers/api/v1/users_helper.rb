# frozen_string_literal: true

module Api
  module V1
    module UsersHelper
      def render_user(token)
        render 'api/v1/users/show.json.jbuilder', locals: { token: token }
      end

      def render_error
        render json: { message: I18n.t('api.errors.invalid_login_or_password') }, status: STATUS_AUTHENTICATION_ERROR
      end
    end
  end
end
