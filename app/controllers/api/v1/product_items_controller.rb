class Api::V1::ProductItemsController < Api::V1::BaseController
  before_action :find_product_item, only: [:destroy, :update, :show]

  def index
    @product_items = ProductItem.all

    render 'api/v1/product_items/index.json.jbuilder'
  end

  def create
  end

  def destroy
    @product_item.destroy!

    render json: true
  end

  def update
  end

  def show
    render'api/v1/product_items/show.json.jbuilder'
  end

  private

  def find_product_item
    @product_item = ProductItem.find(params[:id])
  end
end
