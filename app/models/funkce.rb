class Funkce < ActiveRecord::Base
  has_many :ukols
  has_many :reports
  accepts_nested_attributes_for :ukols, :allow_destroy => true
  accepts_nested_attributes_for :reports, :allow_destroy => true
end
