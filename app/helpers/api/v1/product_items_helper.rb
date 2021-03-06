# frozen_string_literal: true

module Api
  module V1
    module ProductItemsHelper
      def find_product_item
        @product_item = ProductItem.find(params[:id])
      end

      # We get error here if product doesn't exists
      def check_product
        return unless product_item_params.key?(:product_id)

        unless Product.exists?(product_item_params[:product_id])
          raise ActiveRecord::RecordNotFound, "Product with id='#{product_item_params[:product_id]}' not found"
        end
      end

      def product_item_params
        params.require(:product_item).permit(:name, :description, :price, :size, :color, :available, :product_id)
      end

      def render_product_item
        render 'api/v1/product_items/show.json.jbuilder'
      end
    end
  end
end
