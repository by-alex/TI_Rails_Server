class Nfcobjectattribute < ActiveRecord::Base
  attr_accessible :name, :nfcobject_id, :value
  belongs_to :nfcobject
end
