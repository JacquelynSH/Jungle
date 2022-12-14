class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV['username'], password: ENV['password']

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

# functionality for deleting not necissary ATM

# def destroy
#   @category = category.find params[:name]
#   @category.destroy
#   redirect_to [:admin, :categories], notice: 'Category deleted!'
# end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end
end
