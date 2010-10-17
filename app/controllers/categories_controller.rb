class CategoriesController < ApplicationController
  def index
    @categories = Category.paginate(:all,:page => params[:page])
  end

  def show
    @category = Category.find(params[:id])
    @expenses = @category.expenses.paginate(:all,:page => params[:page])
  end

end
