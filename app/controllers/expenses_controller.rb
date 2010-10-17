class ExpensesController < ApplicationController
  def index
    @expenses = Expense.paginate(:all,:page => params[:page])
  end
  
  def show
    @expense = Expense.find(params[:id])
  end
  
  def new
    @expense = Expense.new
  end
  
  def create
    @expense = Expense.new(params[:expense])
    if @expense.save
      flash[:notice] = "Successfully created expense."
      redirect_to @expense
    else
      render :action => 'new'
    end
  end
  
  def edit
    @expense = Expense.find(params[:id])
  end
  
  def update
    @expense = Expense.find(params[:id])
    if @expense.update_attributes(params[:expense])
      flash[:notice] = "Successfully updated expense."
      redirect_to @expense
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    flash[:notice] = "Successfully destroyed expense."
    redirect_to expenses_url
  end
end
