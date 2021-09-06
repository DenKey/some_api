module Api::V1::BrandHelper
  def brand_params
    params.require(:brand).permit(:name, :description, :code)
  end

  def find_brand
    @brand = Brand.find(params[:id])
  end

  def brand_get_params
    {
      is_include_products: params[:is_include_products]
    }
  end

  def render_brand
    render'api/v1/brands/show.json.jbuilder', locals: brand_get_params
  end
end