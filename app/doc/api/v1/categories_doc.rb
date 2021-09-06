# frozen_string_literal: true

module Api
  module V1
    module CategoriesDoc
      extend Apipie::DSL::Concern
      include Api::V1::EntitiesExtend

      def_param_group :show_options do
        param :is_include_products,
              [true, false], desc: 'Show all products related to category', required: false
        param :is_include_subcategories,
              [true, false], desc: 'Show all subcategories related to category', required: false
      end

      def_param_group :category_action do
        param :category, Hash, desc: 'category data', required: true do
          param :name, String, desc: 'category name'
          param :description, String, desc: 'category description'
          param :code, String, desc: 'category code'
        end
      end

      api :GET, '/categories', 'Get categories list'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      param_group :show_options
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :category
      end
      def index
        # stub
      end

      api :GET, '/categories/:id', 'Get category'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      param_group :show_options
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :category
      end
      def show
        # stub
      end

      api :DELETE, '/categories/:id', 'Delete category'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      formats ['json']
      returns code: 200, desc: 'a successful response'
      def destroy
        # stub
      end

      api :POST, '/categories', 'Create a new category'
      error code: 400, desc: 'Parameters missing'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      param_group :show_options
      param_group :category_action
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :category
      end
      def create
        # stub
      end

      api :PUT, '/categories/:id', 'Update a category'
      error code: 400, desc: 'Parameters missing'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      param_group :show_options
      param_group :category_action
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :category
      end
      def update
        # stub
      end
    end
  end
end
