class Tag < ActiveRecord::Base
  has_and_belongs_to_many :gifts # through join table

  validates_uniqueness_of :name
end
