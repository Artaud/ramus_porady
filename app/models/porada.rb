class Porada < ActiveRecord::Base
  has_many :jednanis
  accepts_nested_attributes_for :jednanis
end
