class Api::V1::CategoriesController < Api::V1::BaseController
  before_action :find_category, only: [:destroy, :update, :show]

  def index
    @categories = Category.all

    render 'api/v1/categories/index.json.jbuilder'
  end

  def create
  end

  def destroy
    @category.destroy!

    render json: true
  end

  def update
  end

  def show
    render'api/v1/categories/show.json.jbuilder'
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end
end
