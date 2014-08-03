class User < ActiveRecord::Base
  has_many :adverts, :dependent => :destroy

  validates :phone, :presence => true
end
