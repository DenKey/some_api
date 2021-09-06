# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      include Api::V1::UsersHelper
      include Api::V1::UsersDoc

      skip_before_action :authorized, only: :login

      EXPIRATION_TIME = Time.now.to_i + 86_400

      def login
        @user = User.find_by(username: params[:username])

        if @user&.authenticate(params[:password])
          render_user(encode_token({ user_id: @user.id, exp: EXPIRATION_TIME }))
        else
          render_error
        end
      end

      def profile
        render_user(nil)
      end

      private

      def user_params
        params.permit(:username, :password)
      end
    end
  end
end
