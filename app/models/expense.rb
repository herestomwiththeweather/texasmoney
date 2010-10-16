class Expense < ActiveRecord::Base
  attr_accessible :year, :amount, :category_id, :expense_id, :vendor_id, :payment_date
end
