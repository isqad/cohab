class Dwelling < ActiveRecord::Base
  has_many :adverts, :dependent => :destroy
end
