module Api::V1::BrandHelper
  def brand_params
    params.require(:brand).permit(:name, :description, :code)
  end

  def find_brand
    @brand = Brand.find(params[:id])
  end
end