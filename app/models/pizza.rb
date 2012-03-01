class Pizza < ActiveRecord::Base
  belongs_to :order
  has_and_belongs_to_many :toppings

  accepts_nested_attributes_for :toppings
  
  validates :size, :presence => true
end
