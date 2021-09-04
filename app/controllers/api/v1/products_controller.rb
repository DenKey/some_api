class Api::V1::ProductsController < Api::V1::BaseController
  before_action :find_product, only: [:destroy, :update, :show]

  def index
    @products = Product.all

    render 'api/v1/products/index.json.jbuilder'
  end

  def create
  end

  def destroy
    @product.destroy!

    render json: true
  end

  def update
  end

  def show
    render'api/v1/products/show.json.jbuilder'
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end
end
