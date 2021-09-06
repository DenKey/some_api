module Api::V1::CategoriesHelper
  def check_parent_category
    return unless category_params.key?(:parent_category_id)

    unless Category.exists?(category_params[:parent_category_id])
      raise ActiveRecord::RecordNotFound.new("Category with id='#{category_params[:parent_category_id]}' not found")
    end
  end

  def category_params
    params.require(:category).permit(:name, :description, :code, :parent_category_id)
  end

  def find_category
    @category = Category.find(params[:id])
  end

  def category_get_params
    {
      is_include_subcategories: params[:is_include_subcategories],
      is_include_products: params[:is_include_products]
    }
  end

  def render_category
    render'api/v1/categories/show.json.jbuilder', locals: category_get_params
  end
end
