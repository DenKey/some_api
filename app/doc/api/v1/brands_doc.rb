module Api::V1
  module BrandsDoc
    extend Apipie::DSL::Concern
    include Api::V1::EntitiesExtend

    def_param_group :show_options do
      param :is_include_products,
            [true, false], :desc => "Show all products related to brand", :required => false
    end

    def_param_group :brand_action do
      param :brand, Hash, :desc => "Brand data", :required => true do
        param :name, String, :desc => "Brand name"
        param :description, String, :desc => "Brand description"
        param :code, String, :desc => "Brand code"
      end
    end

    api :GET, "/brands", "Get brands list"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :brand
    end
    def index
      # stub
    end

    api :GET, "/brands/:id", "Get brand"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :brand
    end
    def show
      # stub
    end

    api :DELETE, "/brands/:id", "Delete brand"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    formats ['json']
    returns :code => 200, :desc => "a successful response"
    def destroy
      # Stub
    end

    api :POST, "/brands", "Create a new brand"
    error :code => 400, :desc => "Parameters missing"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    param_group :brand_action
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :brand
    end
    def create
      # stub
    end

    api :PUT, "/brands/:id", "Update a brand"
    error :code => 400, :desc => "Parameters missing"
    error :code => 401, :desc => "Please log in"
    error :code => 404, :desc => "Requested record not found"
    param_group :show_options
    param_group :brand_action
    formats ['json']
    returns :code => 200, :desc => "a successful response" do
      param_group :brand
    end
    def update
      # stub
    end
  end
end
