class Api::V1::CategoriesController < Api::V1::BaseController
  include Api::V1::CategoriesHelper
  before_action :find_category, only: [:destroy, :update, :show]
  before_action :check_parent_category, only: [:create, :update]

  def index
    @categories = Category.all

    render 'api/v1/categories/index.json.jbuilder', locals: category_get_params
  end

  def create
    @category = Category.create!(category_params)

    render_category
  end

  def destroy
    @category.destroy!

    render json: true
  end

  def update
    @category.update!(category_params)

    render_category
  end

  def show
    render_category
  end
end
