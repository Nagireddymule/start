class Invoice < ApplicationRecord
  belongs_to :employee
  has_many :purchases 
end
