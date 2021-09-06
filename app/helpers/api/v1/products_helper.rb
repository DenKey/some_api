# frozen_string_literal: true

module Api
  module V1
    module ProductsHelper
      def product_params
        params.require(:product).permit(:name, :description, :brand_id, :beginning_date,
                                        :expiration_date, :available, category_ids: [])
      end

      def find_product
        @product = Product.find(params[:id])
      end

      # We get error here if product doesn't exists
      def check_brand
        return unless product_params.key?(:brand_id)

        unless Brand.exists?(product_params[:brand_id])
          raise ActiveRecord::RecordNotFound, "Brand with id='#{product_params[:brand_id]}' not found"
        end
      end

      def product_get_params
        {
          is_include_items: params[:is_include_items]
        }
      end

      def render_product
        render 'api/v1/products/show.json.jbuilder', locals: product_get_params
      end
    end
  end
end
