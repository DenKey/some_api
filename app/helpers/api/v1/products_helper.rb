module Api::V1::ProductsHelper
  def product_params
    params.require(:product).permit(:name, :description, :brand_id, :beginning_date, :expiration_date, :available)
  end

  def find_product
    @product = Product.find(params[:id])
  end

  # We get error here if product doesn't exists
  def check_brand
    return unless product_params.key?(:brand_id)

    unless Brand.exists?(product_params[:brand_id])
      raise ActiveRecord::RecordNotFound.new("Brand with id='#{product_params[:brand_id]}' not found")
    end
  end
end