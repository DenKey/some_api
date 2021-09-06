module Api::V1
  module ProductsDoc
    extend Apipie::DSL::Concern
    include Api::V1::EntitiesExtend

    def_param_group :show_options do
      param :is_include_items,
            [true, false], :desc => "Show all product_items related to product", :required => false
    end

    def_param_group :product_action do
      param :product, Hash, :desc => "product data", :required => true do
        param :name, String, :desc => "product name"
        param :description, String, :desc => "product description"
        param :brand_id, String, :desc => "Brand id"
        param :expiration_date, String, :desc => "Date when product leave a market"
        param :beginning_date, String, :desc => "Date when product starts on market"
        param :available, String, :desc => "Product availability"
        param :category_ids, Array, :desc => "Brand id"
      end
    end

    api :GET, "/products", "Get products list"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :product
    end
    def index
      # stub
    end

    api :GET, "/products/:id", "Get product"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :product
    end
    def show
      # stub
    end

    api :DELETE, "/products/:id", "Delete product"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    formats ['json']
    returns :code => 200, :desc => "a successful response"
    def destroy
      # stub
    end

    api :POST, "/products", "Create a new product"
    error :code => 400, :desc => "Parameters missing"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    param_group :product_action
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :product
    end
    def create
      # stub
    end

    api :PUT, "/products/:id", "Update a product"
    error :code => 400, :desc => "Parameters missing"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    param_group :product_action
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :product
    end
    def update
      # stub
    end
  end
end
