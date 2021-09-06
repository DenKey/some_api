class Api::V1::ProductsController < Api::V1::BaseController
  include Api::V1::ProductsHelper
  before_action :find_product, only: [:destroy, :update, :show]
  before_action :check_brand, only: [:create, :update]

  def index
    @products = Product.all

    render 'api/v1/products/index.json.jbuilder', locals: product_get_params
  end

  def create
    @product = Product.create!(product_params)

    render_product
  end

  def destroy
    @product.destroy!

    render json: true
  end

  def update
    @product.update!(product_params)

    render_product
  end

  def show
    render_product
  end
end
