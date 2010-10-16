class CreateObjExpenses < ActiveRecord::Migration
  def self.up
    create_table :obj_expenses do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :obj_expenses
  end
end
