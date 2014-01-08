class Jednani < ActiveRecord::Base
  has_many :ukols
  accepts_nested_attributes_for :ukols
end
