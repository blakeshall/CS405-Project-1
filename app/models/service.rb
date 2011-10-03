class Service < ActiveRecord::Base
  validates :name, :presence => true
  validates :amount, :presence => true
  has_many :payments
end
