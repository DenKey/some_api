# frozen_string_literal: true

module Api
  module V1
    class ProductItemsController < Api::V1::BaseController
      include Api::V1::ProductItemsHelper
      before_action :find_product_item, only: %i[destroy update show]
      before_action :check_product, only: %i[create update]

      def index
        @product_items = ProductItem.all

        render 'api/v1/product_items/index.json.jbuilder'
      end

      def create
        @product_item = ProductItem.create!(product_item_params)

        render_product_item
      end

      def destroy
        @product_item.destroy!

        render json: true
      end

      def update
        @product_item.update!(product_item_params)

        render_product_item
      end

      def show
        render_product_item
      end
    end
  end
end
