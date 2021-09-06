# frozen_string_literal: true

module Api
  module V1
    module ProductItemsDoc
      extend Apipie::DSL::Concern
      include Api::V1::EntitiesExtend

      def_param_group :product_item_action do
        param :product_item, Hash, desc: 'product_item data', required: true do
          param :name, String, desc: 'product_item name'
          param :description, String, desc: 'product_item description'
          param :product_id, String, desc: 'Product id'
          param :price, String, desc: 'Product Item price'
          param :size, ProductItem::SIZES, desc: 'Product Item size'
          param :color, ProductItem::COLORS, desc: 'Product Item color'
          param :available, String, desc: 'Product Item availability'
          param :category_ids, Array, desc: 'Brand id'
        end
      end

      api :GET, '/product_items', 'Get product_items list'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :product_item
      end
      def index
        # stub
      end

      api :GET, '/product_items/:id', 'Get product_item'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :product_item
      end
      def show
        # stub
      end

      api :DELETE, '/product_items/:id', 'Delete product_item'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      formats ['json']
      returns code: 200, desc: 'a successful response'
      def destroy
        # stub
      end

      api :POST, '/product_items', 'Create a new product_item'
      error code: 400, desc: 'Parameters missing'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      param_group :product_item_action
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :product_item
      end
      def create
        # stub
      end

      api :PUT, '/product_items/:id', 'Update a product_item'
      error code: 400, desc: 'Parameters missing'
      error code: 401, desc: 'Please log in'
      error code: 404, desc: 'Requested record not found'
      param_group :product_item_action
      formats ['json']
      returns code: 200, desc: 'a successful response' do
        param_group :product_item
      end
      def update
        # stub
      end
    end
  end
end
