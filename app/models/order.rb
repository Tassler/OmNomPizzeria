class Order < ActiveRecord::Base
  has_many :pizzas, :dependent => :destroy
  accepts_nested_attributes_for :pizzas, :allow_destroy => true
end
