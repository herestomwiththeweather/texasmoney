class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.integer :year
      t.decimal :amount
      t.integer :category_id
      t.integer :obj_expense_id
      t.integer :vendor_id
      t.datetime :payment_date
      t.timestamps
    end
  end
  
  def self.down
    drop_table :expenses
  end
end
