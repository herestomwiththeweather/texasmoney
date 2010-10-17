class VendorsController < ApplicationController
  def index
    @vendors = Vendor.paginate(:all,:page => params[:page])
  end

  def show
    @vendor = Vendor.find(params[:id])
    @expenses = @vendor.expenses.paginate(:all,:page => params[:page])
  end
end
