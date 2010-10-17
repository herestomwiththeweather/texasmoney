class ObjExpensesController < ApplicationController
  def index
    @obj_expenses = ObjExpense.paginate(:all,:page => params[:page])
  end

  def show
    @obj_expense = ObjExpense.find(params[:id])
    @expenses = @obj_expense.expenses.paginate(:all,:page => params[:page])
  end

end
