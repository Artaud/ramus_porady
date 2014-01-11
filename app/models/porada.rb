class Porada < ActiveRecord::Base
  has_many :reports
  accepts_nested_attributes_for :reports
end
