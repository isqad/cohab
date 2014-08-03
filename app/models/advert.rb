class Advert < ActiveRecord::Base
  belongs_to :user
  belongs_to :dwelling

  scope :ordered, -> { order(arel_table[:created_at].desc) }

  validates :description, :presence => true
end
