class Porada < ActiveRecord::Base
  has_many :reports
  has_many :jednanis
  has_many :funkces
  has_many :ukols
  accepts_nested_attributes_for :reports, :allow_destroy => true
  accepts_nested_attributes_for :jednanis, :allow_destroy => true
  accepts_nested_attributes_for :funkces, :allow_destroy => true
  accepts_nested_attributes_for :ukols, :allow_destroy => true
end
