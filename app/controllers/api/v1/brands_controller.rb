class Api::V1::BrandsController < Api::V1::BaseController
  include Api::V1::BrandHelper
  before_action :find_brand, only: [:show, :update, :destroy]

  def index
    @brands = Brand.all

    render 'api/v1/brands/index.json.jbuilder'
  end

  def create
    @brand = Brand.create!(brand_params)

    render'api/v1/brands/show.json.jbuilder'
  end

  def destroy
    @brand.destroy!

    render json: true
  end

  def update
    @brand.update!(brand_params)

    render'api/v1/brands/show.json.jbuilder'
  end

  def show
    render'api/v1/brands/show.json.jbuilder'
  end
end
