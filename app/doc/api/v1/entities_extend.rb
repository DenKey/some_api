module Api::V1::EntitiesExtend
  extend ActiveSupport::Concern

  included do
    def_param_group :brand do
      property :id, String, :desc => "Brand id"
      property :name, String, :desc => "Brand name"
      property :description, String, :desc => "Brand description"
      property :code, String, :desc => "Brand code"
      property :created_at, String, :desc => "Created_at timestamp"
      property :updated_at, String, :desc => "Updated_at timestamp"
      property :products, Array, :desc => "Array of products if is_include_products is true" do
        param_group :product
      end
    end

    def_param_group :category do
      property :id, String, :desc => "Category id"
      property :name, String, :desc => "Category name"
      property :description, String, :desc => "Category description"
      property :code, String, :desc => "Category code"
      property :created_at, String, :desc => "Created_at timestamp"
      property :updated_at, String, :desc => "Updated_at timestamp"
      property :parent_category_id, String, :desc => "Parent category"
      property :products, Array, :desc => "Array of products if is_include_products is true" do
        param_group :product
      end
      property :subcategories, Array, :desc => "Array of categories if is_include_subcategories is true"
    end

    def_param_group :product do
      property :id, String, :desc => "Product id"
      property :name, String, :desc => "Product name"
      property :description, String, :desc => "Product description"
      property :brand_id, String, :desc => "Brand id"
      property :beginning_date, String, :desc => "Date when product starts on market"
      property :expiration_date, String, :desc => "Date when product leave a market"
      property :available, [true, false], :desc => "Product availability"
      property :category_ids, Array, :desc => "Product categories"
      property :created_at, String, :desc => "Created_at timestamp"
      property :updated_at, String, :desc => "Updated_at timestamp"
    end

    def_param_group :product_item do
      property :id, String, :desc => "Product Item id"
      property :name, String, :desc => "Product Item  name"
      property :description, String, :desc => "Product Item  description"
      property :product_id, String, :desc => "Product id"
      property :price, Array, :desc => "Product Item price"
      property :size, Array, :desc => "Product Item size"
      property :color, Array, :desc => "Product Item color"
      property :available, [true, false], :desc => "Product Item availability"
      property :created_at, String, :desc => "Created_at timestamp"
      property :updated_at, String, :desc => "Updated_at timestamp"
    end
  end
end
