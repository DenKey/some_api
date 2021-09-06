# frozen_string_literal: true

module Api
  module V1
    module UsersDoc
      extend Apipie::DSL::Concern

      def_param_group :user do
        property :id, String, desc: 'User id'
        property :username, String, desc: 'Username'
      end

      api :GET, '/profile', 'Get user profile'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :user
      end
      def index
        # stub
      end

      api :POST, '/login', 'Get Bearer token'
      error code: 400, desc: 'Parameters missing'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      param :username, String, desc: 'User login'
      param :password, String, desc: 'User password'
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :user
        property :token, String, desc: 'Auth token'
      end
      def create
        # stub
      end
    end
  end
end
