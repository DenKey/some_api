class Api::V1::BrandsController < Api::V1::BaseController
  before_action :find_brand, only: [:show, :update, :destroy]

  def index
    @brands = Brand.all

    render 'api/v1/brands/index.json.jbuilder'
  end

  def create
  end

  def destroy
    @brand.destroy!

    render json: true
  end

  def update
  end

  def show
    render'api/v1/brands/show.json.jbuilder'
  end

  private

  def find_brand
    @brand = Brand.find(params[:id])
  end
end
