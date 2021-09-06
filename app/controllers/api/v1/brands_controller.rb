# frozen_string_literal: true

module Api
  module V1
    class BrandsController < Api::V1::BaseController
      include Api::V1::BrandHelper
      before_action :find_brand, only: %i[show update destroy]

      def index
        @brands = Brand.all

        render 'api/v1/brands/index.json.jbuilder', locals: brand_get_params
      end

      def create
        @brand = Brand.create!(brand_params)

        render_brand
      end

      def destroy
        @brand.destroy!

        render json: true
      end

      def update
        @brand.update!(brand_params)

        render_brand
      end

      def show
        render_brand
      end
    end
  end
end
