class User < ActiveRecord::Base
  has_many :orders
  validates :name,  :presence => true
  validates :phone,  :presence => true, :uniqueness => true
end
