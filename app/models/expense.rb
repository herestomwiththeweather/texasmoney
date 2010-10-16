class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :obj_expense
  belongs_to :vendor
  attr_accessible :year, :amount, :category_id, :obj_expense_id, :vendor_id, :payment_date
end
