class Nfcobject < ActiveRecord::Base
  attr_accessible :description, :name, :nfctype
  has_many :nfcobjectattributes 
end
