class Nfcobject < ActiveRecord::Base
  attr_accessible :description, :name, :nfctype
  has_many :nfcobjectattributes 
  
  def to_param
    self.name
  end
  
end
