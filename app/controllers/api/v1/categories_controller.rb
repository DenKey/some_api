# frozen_string_literal: true

module Api
  module V1
    class CategoriesController < Api::V1::BaseController
      include Api::V1::CategoriesHelper
      before_action :find_category, only: %i[destroy update show]
      before_action :check_parent_category, only: %i[create update]

      def index
        @categories = Category.all

        render 'api/v1/categories/index.json.jbuilder', locals: category_get_params
      end

      def create
        @category = Category.create!(category_params)

        render_category
      end

      def destroy
        @category.destroy!

        render json: true
      end

      def update
        @category.update!(category_params)

        render_category
      end

      def show
        render_category
      end
    end
  end
end
