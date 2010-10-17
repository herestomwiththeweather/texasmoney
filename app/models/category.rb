class Category < ActiveRecord::Base
  has_many :expenses
  validates_uniqueness_of :name
end
